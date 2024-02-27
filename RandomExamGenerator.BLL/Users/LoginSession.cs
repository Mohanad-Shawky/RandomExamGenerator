using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RandomExamGenerator.DAL.Models;
using RandomExamGenerator.DAL.Enums;
using RandomExamGenerator.DAL.Context;
using RandomExamGenerator.BLL.Exceptions;
using RandomExamGenerator.BLL.Enums;

namespace RandomExamGenerator.BLL.Users
{
    public class LoginSession
    {
        public UserAccount? Account { get; set; }

        public Instructor? InstructorUser { get; set; }

        public Student? StudentUser { get; set; }

        public SessionUserType GetSessionUserType()
        {
            if(StudentUser != null)
            {
                return SessionUserType.Student;
            }
            else if(InstructorUser != null)
            {
                return SessionUserType.Instructor;
            }
            else
            {
                return SessionUserType.NotLoggedIn;
            }
        }


        private static RandomExamGeneratorContext? context;

        private static LoginSession? Session;

        public static async Task<LoginSession> LoginAsync(string userName, string password)
        {
            if (Session == null)
            {
                OutputParameter<int> r = new();

                if(context == null)
                {
                    context = new();
                }

                var procedures = new RandomExamGeneratorContextProcedures(context);

                var result = await procedures.SP_LoginWithPasswordAsync(userName, password, r);

                if(r.Value == 0)
                {
                    if (result.Count == 1)
                    {
                        Session = new();
                        Session.Account = new UserAccount(result[0]);

                        if (Enum.TryParse(Session.Account.Type, out UserAccountTypeEnum type))
                        {
                            if (type == UserAccountTypeEnum.student)
                            {
                                var student = context.Students.FirstOrDefault(s => s.Id == Session.Account.Id);
                                if (student != null)
                                {
                                    Session.StudentUser = student;
                                }
                                else
                                {
                                    throw new IntegrityException("Cannot find student data for student user account");
                                }
                            }
                            else if (type == UserAccountTypeEnum.instructor)
                            {
                                // initialize instructor
                                var instructor = context.Instructors.FirstOrDefault(i => i.Id == Session.Account.Id);
                                if (instructor != null)
                                {
                                    Session.InstructorUser = instructor;
                                }
                                else
                                {
                                    throw new IntegrityException("Cannot find instructor data for instructor user account");
                                }
                            }
                            else
                            {
                                // throw exception for data corrupted
                                throw new DataCorruptionException();
                            }
                        }

                    }
                    else if (result.Count > 1)
                    {
                        throw new MultipleResultsWithIdentityException();
                    }
                    else
                    {
                        throw new UserNotFoundException();
                    }
                }
                else
                {
                    throw new InvalidOperationException("Could not retrieve account data from the database");
                }
            }
            return Session;
        }


        public static LoginSession? GetSession()
        {
            return Session;
        }


        public static void Terminate()
        {
            Session = null;
            context?.Dispose();
            context = null;
        }

        public static void Clean()
        {
            context?.Dispose();
            context = null;
        }

        protected LoginSession()
        {
            Account = null;
            StudentUser = null;
            InstructorUser = null;
        }

    }
}

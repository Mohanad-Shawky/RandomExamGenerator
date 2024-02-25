// Ignore Spelling: BLL

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RandomExamGenerator.BLL.Exceptions
{
    public class UserNotFoundException : Exception
    {

        public UserNotFoundException() : base("Cannot find a user with the given data!")
        {
        }


        public UserNotFoundException(string? message) : base(message)
        {
        }

        public UserNotFoundException(string? message, Exception? innerException) : base(message, innerException)
        {
        }
    }
}


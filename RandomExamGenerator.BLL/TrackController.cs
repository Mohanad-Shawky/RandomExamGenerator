using RandomExamGenerator.DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RandomExamGenerator.BLL
{
    public class TrackController : BaseController
    {
        public static List<Track> GetAllTracks()
        {
            return Ctxt.Tracks.ToList();

        }

        public static List<Department> GetAllDepartment()
        {
            return Ctxt.Departments.ToList();

        }

        public static void SaveAllTracks()
        {

            Ctxt.SaveChanges();

        }
    }
}

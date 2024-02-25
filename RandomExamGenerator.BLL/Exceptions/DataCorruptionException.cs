// Ignore Spelling: BLL

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RandomExamGenerator.BLL.Exceptions
{
    public class DataCorruptionException : Exception
    {
        public DataCorruptionException() : base("Data Corrupted, Cannot recognize the value assigned to this member")
        {
        }

        public DataCorruptionException(string? message) : base(message)
        {
        }

        public DataCorruptionException(string? message, Exception? innerException) : base(message, innerException)
        {
        }
    }
}

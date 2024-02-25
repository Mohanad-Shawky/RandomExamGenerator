// Ignore Spelling: BLL

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RandomExamGenerator.BLL.Exceptions
{
    public class IntegrityException : Exception
    {
        public IntegrityException() : base("Invalid integrity")
        {
        }

        public IntegrityException(string? message) : base(message)
        {
        }

        public IntegrityException(string? message, Exception? innerException) : base(message, innerException)
        {
        }
    }
}

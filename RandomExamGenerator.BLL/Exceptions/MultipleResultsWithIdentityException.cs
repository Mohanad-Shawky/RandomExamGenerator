// Ignore Spelling: BLL

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RandomExamGenerator.BLL.Exceptions
{
    public class MultipleResultsWithIdentityException : Exception
    {
        public MultipleResultsWithIdentityException() : base("Data Corrupted, Found multiple results with the same identity")
        {
        }

        public MultipleResultsWithIdentityException(string? message) : base(message)
        {
        }

        public MultipleResultsWithIdentityException(string? message, Exception? innerException) : base(message, innerException)
        {
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace RandomExamGenerator.DAL.Context
{
    public partial class RandomExamGeneratorContext : DbContext
    {

        public RandomExamGeneratorContext()
        {
        }

        public RandomExamGeneratorContext(DbContextOptions<RandomExamGeneratorContext> options)
            : base(options)
        {
        }
    }
}

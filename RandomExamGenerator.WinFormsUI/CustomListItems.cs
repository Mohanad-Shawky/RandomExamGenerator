using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RandomExamGenerator.WinFormsUI
{
    public class CustomListItems
    {
        public int Value1 { get; set; }
        public string Value2 { get; set; }


        public CustomListItems(int value1, string value2)
        {
            Value1 = value1;
            Value2 = value2;
        }

        public override string ToString()
        {
            return $"{Value1}) {Value2}";
        }
    }
}

// Ignore Spelling: Ctxt

using System.Data;
using RandomExamGenerator.DAL.Context;

namespace RandomExamGenerator.BLL;

public class BaseController
{
    public static RandomExamGeneratorContext Ctxt = new RandomExamGeneratorContext();

    protected static RandomExamGeneratorContextProcedures ContextProcedures = new(Ctxt);


    protected static DataTable ToDataTable(List<int> integers)
    {
        DataTable dataTable = new DataTable();
        dataTable.Columns.Add("Value", typeof(int));

        foreach (int value in integers)
        {
            dataTable.Rows.Add(value);
        }

        return dataTable;
    }
}
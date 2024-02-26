using RandomExamGenerator.DAL.Context;

namespace RandomExamGenerator.BLL;

public class BaseController 
{
    public static RandomExamGeneratorContext Ctxt = new RandomExamGeneratorContext();

}
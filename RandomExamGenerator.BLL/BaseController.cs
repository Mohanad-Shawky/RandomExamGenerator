using RandomExamGenerator.DAL.Context;

namespace RandomExamGenerator.BLL;

public class BaseController
{
    protected static RandomExamGeneratorContext Ctxt = new RandomExamGeneratorContext();

}
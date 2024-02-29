using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using RandomExamGenerator.DAL.Context;

namespace RandomExamGenerator.DAL.Models;

public partial class UserAccount
{


    public UserAccount() { }

    public UserAccount(SP_LoginWithPasswordResult loginWithPasswordResult)
    {
        Id = loginWithPasswordResult.ID;
        PasswordHash = loginWithPasswordResult.PasswordHash;
        Type = loginWithPasswordResult.Type;
        UserName = loginWithPasswordResult.UserName;
    }

    public UserAccount(SP_LoginWithHashResult loginWithHashResult)
    {
        Id = loginWithHashResult.ID;
        PasswordHash = loginWithHashResult.PasswordHash;
        Type = loginWithHashResult.Type;
        UserName = loginWithHashResult.UserName;
    }



}
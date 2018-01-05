using Microsoft.AspNet.Identity.EntityFramework;
using PROG1180_NBD_APP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PROG1180_NBD_APP.DAL
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
        }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }
    }
}
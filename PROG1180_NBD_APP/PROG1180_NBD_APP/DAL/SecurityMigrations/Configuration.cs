namespace PROG1180_NBD_APP.DAL.SecurityMigrations
{
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;
    using PROG1180_NBD_APP.Models;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<PROG1180_NBD_APP.DAL.ApplicationDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
            MigrationsDirectory = @"DAL\SecurityMigrations";
        }

        protected override void Seed(PROG1180_NBD_APP.DAL.ApplicationDbContext context)
        {
            //Create a Role Manager ---------------------------------------------------------------------------------------------------------ROLES-------------
            var roleManager = new RoleManager<IdentityRole>(new
                                          RoleStore<IdentityRole>(context));

            //Create Role testAdmin if it does not exist
            if (!context.Roles.Any(r => r.Name == "TestAdmin"))
            {
                var roleresult = roleManager.Create(new IdentityRole("TestAdmin"));
            }

            //Create Role TestStaff if it does not exist
            if (!context.Roles.Any(r => r.Name == "TestStaff"))
            {
                var roleresult = roleManager.Create(new IdentityRole("TestStaff"));
            }

            //Create a User Manager ---------------------------------------------------------------------------------------------------------USERS------------
            var manager = new UserManager<ApplicationUser>(
                new UserStore<ApplicationUser>(context));

            //-----------------------------------------
            //Now the Admin user named admin with password password
            var testadminuser = new ApplicationUser
            {
                UserName = "testadmin@nbd.com",
                Email = "testadmin@nbd.com"
            };

            //Assign admin user to role
            if (!context.Users.Any(u => u.UserName == "testadmin@nbd.com"))
            {
                manager.Create(testadminuser, "password");
                manager.AddToRole(testadminuser.Id, "TestAdmin");
            }

            //-----------------------------------------------------
            //Now the TestStaff user named TestStaff with password password
            var teststaffuser = new ApplicationUser
            {
                UserName = "teststaff@nbd.com",
                Email = "teststaff@nbd.com"
            };

            //Assign teststaff user to role
            if (!context.Users.Any(u => u.UserName == "teststaff@nbd.com"))
            {
                manager.Create(teststaffuser, "password");
                manager.AddToRole(teststaffuser.Id, "TestStaff");
            }

            //-----------------------------------------------------
            //Now the user named user with password password
            /*
            var user = new ApplicationUser
            {
                UserName = "user@outlook.com",
                Email = "user@outlook.com"
            };

            //Assign user to role
            if (!context.Users.Any(u => u.UserName == "user@outlook.com"))
            {
                manager.Create(user, "password");
            }
            */

        }
    }
}

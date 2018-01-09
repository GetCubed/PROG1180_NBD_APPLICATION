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

            //Create Role  if it does not exist
            if (!context.Roles.Any(r => r.Name == "Owner"))
            {
                var roleresult = roleManager.Create(new IdentityRole("Owner"));
            }

            //Create Role if it does not exist
            if (!context.Roles.Any(r => r.Name == "Manager"))
            {
                var roleresult = roleManager.Create(new IdentityRole("Manager"));
            }

            //Create Role if it does not exist
            if (!context.Roles.Any(r => r.Name == "Designer"))
            {
                var roleresult = roleManager.Create(new IdentityRole("Designer"));
            }

            //Create Role if it does not exist
            if (!context.Roles.Any(r => r.Name == "SalesAssoc"))
            {
                var roleresult = roleManager.Create(new IdentityRole("SalesAssoc"));
            }




            //Create a User Manager ---------------------------------------------------------------------------------------------------------USERS------------
            var manager = new UserManager<ApplicationUser>(
                new UserStore<ApplicationUser>(context));


            //-------------------------------------------------------------------------------------KERI - OWNER
            //Now the user named user with password password
            
            var keri = new ApplicationUser
            {
                UserName = "Keri@nbd.com",
                Email = "Keri@nbd.com"
            };

            //Assign user to role
            if (!context.Users.Any(u => u.UserName == "Keri@nbd.com"))
            {
                manager.Create(keri, "password");
                manager.AddToRole(keri.Id, "Owner");
                manager.AddToRole(keri.Id, "Manager");
                manager.AddToRole(keri.Id, "Designer");
                manager.AddToRole(keri.Id, "SalesAssoc");
            }

            //-------------------------------------------------------------------------------------STAN - OWNER
            //Now the user named user with password password

            var stan = new ApplicationUser
            {
                UserName = "Stan@nbd.com",
                Email = "Stan@nbd.com"
            };

            //Assign user to role
            if (!context.Users.Any(u => u.UserName == "Stan@nbd.com"))
            {
                manager.Create(stan, "password");
                manager.AddToRole(stan.Id, "Owner");
                manager.AddToRole(stan.Id, "Manager");
                manager.AddToRole(stan.Id, "Designer");
                manager.AddToRole(stan.Id, "SalesAssoc");
            }

            //-------------------------------------------------------------------------------------CONNIE OWNER
            //Now the user named user with password password

            var connie = new ApplicationUser
            {
                UserName = "Connie@nbd.com",
                Email = "Connie@nbd.com"
            };

            //Assign user to role
            if (!context.Users.Any(u => u.UserName == "Connie@nbd.com"))
            {
                manager.Create(connie, "password");
                manager.AddToRole(connie.Id, "Owner");
                manager.AddToRole(connie.Id, "Manager");
                manager.AddToRole(connie.Id, "Designer");
                manager.AddToRole(connie.Id, "SalesAssoc");
            }


            //-------------------------------------------------------------------------------------Cheryl Manager
            //Now the user named user with password password

            var cheryl = new ApplicationUser
            {
                UserName = "Cheryl@nbd.com",
                Email = "Cheryl@nbd.com"
            };

            //Assign user to role
            if (!context.Users.Any(u => u.UserName == "Cheryl@nbd.com"))
            {
                manager.Create(cheryl, "password");
                manager.AddToRole(cheryl.Id, "Manager");
                manager.AddToRole(cheryl.Id, "Designer");
                manager.AddToRole(cheryl.Id, "SalesAssoc");
            }

            //-------------------------------------------------------------------------------------Sue Manager
            //Now the user named user with password password

            var sue = new ApplicationUser
            {
                UserName = "Sue@nbd.com",
                Email = "Sue@nbd.com"
            };

            //Assign user to role
            if (!context.Users.Any(u => u.UserName == "Sue@nbd.com"))
            {
                manager.Create(sue, "password");
                manager.AddToRole(sue.Id, "Manager");
                manager.AddToRole(sue.Id, "Designer");
                manager.AddToRole(sue.Id, "SalesAssoc");
            }

            //-------------------------------------------------------------------------------------Tamara Designer
            //Now the user named user with password password

            var tamara = new ApplicationUser
            {
                UserName = "Tamara@nbd.com",
                Email = "Tamara@nbd.com"
            };

            //Assign user to role
            if (!context.Users.Any(u => u.UserName == "Tamara@nbd.com"))
            {
                manager.Create(tamara, "password");
                manager.AddToRole(tamara.Id, "Designer");
            }

            //-------------------------------------------------------------------------------------Bob SalesAssoc
            //Now the user named user with password password

            var bob = new ApplicationUser
            {
                UserName = "Bob@nbd.com",
                Email = "Bob@nbd.com"
            };

            //Assign user to role
            if (!context.Users.Any(u => u.UserName == "Bob@nbd.com"))
            {
                manager.Create(bob, "password");
                manager.AddToRole(bob.Id, "SalesAssoc");
            }





        }
    }
}

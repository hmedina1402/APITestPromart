using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiTestPromart.Models;

namespace WebApiTestPromart.Data
{
    public class TestPromartContext: DbContext
    {

        public TestPromartContext(DbContextOptions options) : base(options) { }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
        
        public DbSet<t_cliente> t_cliente { get; set; }
    }
}

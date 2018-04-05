namespace Elderbot.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class BotDataModel : DbContext
    {
        public BotDataModel()
            : base("name=BotDataModel")
        {
        }

        public virtual DbSet<BotResponse> BotResponses { get; set; }
        public virtual DbSet<MessageLog> MessageLogs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}

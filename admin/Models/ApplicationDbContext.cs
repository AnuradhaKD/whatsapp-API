using System.Data.Entity;

namespace admin.Models
{
    public class ApplicationDbContext : DbContext
    {
        // Define the table as a DbSet
        public DbSet<BotReply> BotReplies { get; set; }

        // Specify the connection string name (from Web.config)
        public ApplicationDbContext() : base("DefaultConnection")
        {
        }

        // Optional: Add model configurations here if needed
    }

    // Entity Model
    public class BotReply
    {
        public int Id { get; set; }
        public string UserMessage { get; set; }
        public string Reply { get; set; }
    }
}

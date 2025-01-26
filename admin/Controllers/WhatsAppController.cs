using System.Data.SqlClient;
using System;
using System.Web.Http;// Make sure to use this namespace for API functionality

namespace admin.Controllers
{
    [RoutePrefix("api/whatsapp")]
    public class WhatsAppController : ApiController
    {
        [HttpPost]
        [Route("message")]
        public IHttpActionResult SendMessage([FromBody] MessageRequest request)
        {
            if (request == null || string.IsNullOrWhiteSpace(request.Message))
            {
                return BadRequest("Message cannot be empty.");
            }

            string userMessage = request.Message.ToLower();
            string botReply = GetReplyFromDatabase(userMessage); 

            if (string.IsNullOrEmpty(botReply))
            {
                botReply = "Please check your response again.";
            }

            // Store the user's message and bot's reply in the database
            SaveMessageToDatabase(userMessage, botReply);

            return Ok(new { reply = botReply });
        }

        // Fetch reply from the database
        private string GetReplyFromDatabase(string userMessage)
        {
            string connectionString = "Server=AKD\\SQLEXPRESS;Database=WAChatBot;User ID=sa;Password=123;"; 
            string reply = null;

            using (var connection = new SqlConnection(connectionString))
            {
                string query = "SELECT BotReply FROM BotResponses WHERE UserMessage = @UserMessage";

                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserMessage", userMessage);

                    connection.Open();
                    var result = command.ExecuteScalar();
                    if (result != null)
                    {
                        reply = result.ToString();
                    }
                }
            }

            return reply;
        }

        // Store the user's message and bot's reply in the database
        private void SaveMessageToDatabase(string userMessage, string botReply)
        {
            string connectionString = "Server=AKD\\SQLEXPRESS;Database=WAChatBot;User ID=sa;Password=123;";

            using (var connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO MessageLogs (UserMessage, BotReply, Timestamp) VALUES (@UserMessage, @BotReply, @Timestamp)";

                using (var command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserMessage", userMessage);
                    command.Parameters.AddWithValue("@BotReply", botReply);
                    command.Parameters.AddWithValue("@Timestamp", DateTime.Now);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }

    // Request model for the message sent to the API
    public class MessageRequest
    {
        public string Message { get; set; } // Message from WhatsApp bot
    }
}

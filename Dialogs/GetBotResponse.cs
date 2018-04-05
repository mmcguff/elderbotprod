using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ElderBot.Dialogs
{
    public class GetBotResponse
    {
        //This Function takes the response and returns the response
        public static string Response(string topic)
        {
            using (Elderbot.Models.BotDataModel db = new Elderbot.Models.BotDataModel())
            {
                //We need to add someway of ensure we only pull one and only one row and if no row is found
                //then we pull a I don't understand type response from the database.
                var q = db.BotResponses.Where(r => r.Topic == topic)
                    .Select(r => new { r.Response });
                foreach (var row in q)
                {
                    return row.Response.ToString();
                }

                return "I don't have this intent in my database.  That's embarassing.";

            }

        }
    }
}
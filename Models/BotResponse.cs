namespace Elderbot.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BotResponse")]
    public partial class BotResponse
    {
        public int Id { get; set; }

        [Required]
        [StringLength(100)]
        public string Topic { get; set; }

        [Required]
        public string Response { get; set; }
    }
}

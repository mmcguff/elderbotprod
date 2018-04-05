namespace Elderbot.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MessageLog")]
    public partial class MessageLog
    {
        public int Id { get; set; }

        [Required]
        [StringLength(150)]
        public string ConversationId { get; set; }

        [Required]
        [StringLength(150)]
        public string UserName { get; set; }

        [Required]
        [StringLength(150)]
        public string Channel { get; set; }

        public DateTime Created { get; set; }

        [StringLength(500)]
        public string Message { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiTestPromart.Models
{
    public class t_cliente
    {
        [Key]
        [RegularExpression("([0-9]+)", ErrorMessage = "INGRESE NUMERO DE ID VALIDO")]
        public int id { get; set; }
        public string nombres { get; set; }
        public string apellido_p { get; set; }
        public string apellido_m { get; set; }
        [RegularExpression("([0-9]+)", ErrorMessage = "SOLO NUMEROS POR FAVOR")]
        [StringLength(8, MinimumLength = 8, ErrorMessage = "DNI INVALIDO!")]
        public string dni { get; set; }
        public DateTime fecha_nacimiento { get; set; }
        public string estado { get; set; }
    }
}

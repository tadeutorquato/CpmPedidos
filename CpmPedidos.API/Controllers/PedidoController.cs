using CpmPedidos.Interface;
using Microsoft.AspNetCore.Mvc;
using System;

namespace CpmPedidos.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PedidoController : AppBaseController
    {        
        public PedidoController(IServiceProvider serviceProvider): base(serviceProvider)
        {
            
        }   
        

        [HttpGet]
        [Route("ticket-maximo")]
        public decimal TicketMaximo()
        {
            var rep = (IPedidoRepository)serviceProvider.GetService(typeof(IPedidoRepository));
            return rep.TicketMaximo();
        }

        [HttpGet]
        [Route("por-cliente")]
        public dynamic PedidosClientes()
        {
            var rep = (IPedidoRepository)serviceProvider.GetService(typeof(IPedidoRepository));
            return rep.PedidosClientes();
        }
    }
}

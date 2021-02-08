using CpmPedidos.Interface;
using System;
using System.Linq;

namespace CpmPedidos.Repository
{
    public class PedidoRepository : BaseRepository, IPedidoRepository
    {
        public PedidoRepository(ApplicationDbContext dbContext) : base(dbContext)
        {

        }

        public dynamic PedidosClientes()
        {
            var hoje = DateTime.Today;
            var inicioMes = new DateTime(hoje.Year, hoje.Month - 1, 1);
            var finalMes = new DateTime(hoje.Year, hoje.Month - 1, DateTime.DaysInMonth(hoje.Year, hoje.Month - 1));

            return DbContext.Pedidos
                .Where(x => x.CriadoEm.Date >= inicioMes && x.CriadoEm.Date <= finalMes)
                .GroupBy(
                    pedido => new { pedido.IdCliente, pedido.Cliente.Nome },
                    (chave, pedidos) => new
                    {
                        Cliente = chave.Nome,
                        Pedidos = pedidos.Count(),
                        Total = pedidos.Sum(pedido => pedido.ValorTotal)
                    })
                .ToList();
        }

        public decimal TicketMaximo()
        {
            var hoje = DateTime.Today;

            return DbContext.Pedidos
                .Where(x => x.CriadoEm.Date == hoje)
                .Max(x => (decimal?)x.ValorTotal) ?? 0;
        }

    }
}

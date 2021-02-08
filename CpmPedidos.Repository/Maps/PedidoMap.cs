using CpmPedidos.Domain;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CpmPedidos.Repository
{
    public class PedidoMap : BaseDomainMap<Pedido>
    {
        public PedidoMap() : base("tb_pedido") { }

        public override void Configure(EntityTypeBuilder<Pedido> builder)
        {
            base.Configure(builder);

            builder.Property(x => x.Numero).HasColumnName("numero").HasMaxLength(100).IsRequired();
            builder.Property(x => x.ValorTotal).HasColumnName("valor_total").HasPrecision(17, 2).IsRequired();
            builder.Property(x => x.Entrega).HasColumnName("entrega");

            // Recionamento 1 para N bidirecional
            builder.Property(x => x.IdCliente).HasColumnName("id_cliente").IsRequired();
            builder.HasOne(x => x.Cliente).WithMany(x => x.Pedidos).HasForeignKey(x => x.IdCliente);
        }
    }
}

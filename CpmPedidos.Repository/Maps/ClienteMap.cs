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
    public class ClienteMap : BaseDomainMap<Cliente>
    {
        public ClienteMap() : base("tb_cliente") { }

        public override void Configure(EntityTypeBuilder<Cliente> builder)
        {
            base.Configure(builder);
                        
            builder.Property(x => x.Nome).HasColumnName("nome").HasMaxLength(100).IsRequired();
            builder.Property(x => x.Cpf).HasColumnName("cpf").HasMaxLength(11).IsRequired();
            builder.Property(x => x.Ativo).HasColumnName("ativo").IsRequired();

            builder.Property(x => x.IdEndereco).HasColumnName("id_endereco").IsRequired();
        }
    }
}

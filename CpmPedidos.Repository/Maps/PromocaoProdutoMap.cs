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
    public class PromocaoProdutoMap : BaseDomainMap<PromocaoProduto>
    {
        public PromocaoProdutoMap() : base("tb_promocao_produto") { }

        public override void Configure(EntityTypeBuilder<PromocaoProduto> builder)
        {
            base.Configure(builder);

            builder.Property(x => x.Nome).HasColumnName("nome").HasMaxLength(100).IsRequired();
            builder.Property(x => x.Preco).HasColumnName("preco").HasPrecision(17,2).IsRequired();
            builder.Property(x => x.Ativo).HasColumnName("ativo").IsRequired();

            // Recionamento 1 para N
            builder.Property(x => x.IdImagem).HasColumnName("id_imagem").IsRequired();
            builder.HasOne(x => x.Imagem).WithMany().HasForeignKey(x => x.IdImagem);

            // Recionamento 1 para N bidirecional
            builder.Property(x => x.IdProduto).HasColumnName("id_produto").IsRequired();
            builder.HasOne(x => x.Produto).WithMany(x => x.Promocoes).HasForeignKey(x => x.IdProduto);
        }
    }
}

using CpmPedidos.Domain;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CpmPedidos.Repository
{
    public class ApplicationDbContext : DbContext
    {
        public virtual DbSet<Cidade> Cidades { get; set; }
        public virtual DbSet<Cliente> Clientes { get; set; }
        public virtual DbSet<CategoriaProduto> CategoriaProdutos { get; set; }
        public virtual DbSet<Produto> Produtos { get; set; }
        public virtual DbSet<PromocaoProduto> PromocoesProdutos { get; set; }
        public virtual DbSet<Combo> Combos { get; set; }
        public virtual DbSet<Pedido> Pedidos { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ApplyConfigurationsFromAssembly(GetType().Assembly);
        }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
            ChangeTracker.AutoDetectChangesEnabled = false;
        }

        protected ApplicationDbContext()
        {
            ChangeTracker.AutoDetectChangesEnabled = false;
        }
    }
}

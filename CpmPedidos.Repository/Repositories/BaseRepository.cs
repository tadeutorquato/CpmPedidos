namespace CpmPedidos.Repository
{
    public class BaseRepository 
    {
        protected readonly ApplicationDbContext DbContext;

        protected const int TamanhoPagina = 5;

        public BaseRepository(ApplicationDbContext dbContext)
        {
            DbContext = dbContext;
        }

    }
}

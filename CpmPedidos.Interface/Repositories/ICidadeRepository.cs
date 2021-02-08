using CpmPedidos.Domain;

namespace CpmPedidos.Interface
{
    public interface ICidadeRepository
    {        
        dynamic Get();

        int Criar(CidadeDTO model);
        int Alterar(CidadeDTO model);
        bool Excluir(int id);
    }
}

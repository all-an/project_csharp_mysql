using System.Collections.Generic;
using System.Threading.Tasks;

namespace DataLibrary
{
    public interface IAcessoDados
    {
        Task<List<T>> CarregaDado<T, U>(string sql, U parametros, string stringDeConexaoDB);
        Task SalvaDado<T>(string sql, T parametros, string stringDeConexaoDB);
    }
}
using System.Collections.Generic;

namespace DataLibrary
{
    public interface IAcessoDados
    {
        List<T> CarregaDado<T, U>(string sql, U parametros, string stringDeConexaoDB);
        void SalvaDado<T>(string sql, T parametros, string stringDeConexaoDB);
    }
}
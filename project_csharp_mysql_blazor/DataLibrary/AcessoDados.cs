using Dapper;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLibrary
{
    public class AcessoDados : IAcessoDados
    {
        public async Task<List<T>> CarregaDado<T, U>(string sql, U parametros, string stringDeConexaoDB)
        {
            //conexão com o banco de dados
            using (IDbConnection conexao = new MySqlConnection(stringDeConexaoDB))
            {
                var rows = await conexao.QueryAsync<T>(sql, parametros);

                return rows;
            }
        }

        public Task SalvaDado<T>(string sql, T parametros, string stringDeConexaoDB)
        {
            //conexão com o banco de dados
            using (IDbConnection conexao = new MySqlConnection(stringDeConexaoDB))
            {
                return conexao.ExecuteAsync(sql, parametros);
            }
        }
    }
}

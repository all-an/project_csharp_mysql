﻿using Dapper;
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
        public List<T> CarregaDado<T, U>(string sql, U parametros, string stringDeConexaoDB)
        {
            //conexão com o banco de dados
            using (IDbConnection conexao = new MySqlConnection(stringDeConexaoDB))
            {
                List<T> rows = conexao.Query<T>(sql, parametros).ToList();

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

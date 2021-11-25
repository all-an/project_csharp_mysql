
# CRUD no Browser com HTML, C#, MySql e Blazor

## _"what we know is a drop, what we don't know is a ocean" (newton)_


Um CRUD no Browser com C# , MySQL e Blazor 


[Video Explicando o Projeto](https://www.youtube.com/watch?v=SvMqfH9RUSs)


Bibliotecas Nuget utilizadas:

- Dapper
- MySQL.Data 

## Caracteristicas

- Ler dados de uma tabela SQL 
- Métodos para Inserir, Atualizar e Deletar dados nesta tabela
- Renderização front end em C# com HTML
- Integração do MySql com o C# na classe AcessoDados

## Método de acesso ao DB
```cs
public async Task<List<T>> CarregaDado<T, U>(string sql, U parametros, string stringDeConexaoDB)
        {
            //conexão com o banco de dados
            using (IDbConnection conexao = new MySqlConnection(stringDeConexaoDB))
            {
                var rows = await conexao.QueryAsync<T>(sql, parametros);
                return rows.ToList();
            }
        }
```

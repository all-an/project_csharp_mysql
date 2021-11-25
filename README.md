
# CRUD no Browser com HTML, C#, MySql e Blazor
## _"what we know is a drop, what we don't know is a ocean" (newton)_

> Nota: `Para executar basta clonar e instalar as biblioetecas abaixo`  

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

## Método para Salvar, Inserir e Atualizar o DB
```cs
public Task SalvaDado<T>(string sql, T parametros, string stringDeConexaoDB)
        {
            //conexão com o banco de dados
            using (IDbConnection conexao = new MySqlConnection(stringDeConexaoDB))
            {
                return conexao.ExecuteAsync(sql, parametros);
            }
        }
```

## Utilizando o método acima retornamos os argumentos nos métodos abaixo para alterar o banco de dados e a página.

```cs
private async Task InserirDado()
    {
        string sql = "INSERT INTO mysqldb.departamento (DepartamentoNome, Responsavel) VALUES (@DepartamentoNome , @Responsavel);";

        await _dados.SalvaDado(sql, new { DepartamentoNome = "Desenvolvimento C", Responsavel = "Dennis Ritchie" }, _config.GetConnectionString("default"));

        await OnInitializedAsync();
    }

    private async Task UpdateDados()
    {
        string sql = "UPDATE mysqldb.departamento SET Responsavel = @Responsavel WHERE DepartamentoId = @DepartamentoId;";

        await _dados.SalvaDado(sql, new { Responsavel = "Ken Thompson", DepartamentoId = 1 }, _config.GetConnectionString("default"));

        await OnInitializedAsync();
    }

    private async Task DeletarDados()
    {
        string sql = "DELETE FROM mysqldb.departamento WHERE DepartamentoId = @DepartamentoId;";

        await _dados.SalvaDado(sql, new { DepartamentoId = 2 }, _config.GetConnectionString("default"));

        await OnInitializedAsync();
    }
```

## HTML integrado ao C#

Botões integrados ao Blazor chamando os métodos acima para alterar o banco de dados. 

```html
<button class="btn btn-primary" @onclick="InserirDado">Inserir</button>
<button class="btn btn-warning" @onclick="UpdateDados">Atualizar</button>
<button class="btn btn-danger" @onclick="DeletarDados">Deletar</button>
```

## Código C# integrado o HTML

> Nota: `Veja os arquivos completos no projeto`  

```html
@if (pessoas == null)
{
    <p><em>Loading...</em></p>
}
else
{
    <table class="table">
        <thead>
            <tr>
                <th>Identificação</th>
                <th>Nome do Setor</th>
                <th>Responsável</th>
            </tr>
        </thead>
        <tbody>
            @foreach (var p in pessoas)
            {
                <tr>
                    <td>@p.DepartamentoId</td>
                    <td>@p.DepartamentoNome</td>
                    <td>@p.Responsavel</td>
                </tr>
            }
        </tbody>
    </table>
}
```

| Muito Obrigado | README |
| ------ | ------ |
| Github | [test/test][PlDb] |

## Development

```sh
test
```



#### Building

For production release:

```sh
build 
```


## License

MIT

**Free Software! **
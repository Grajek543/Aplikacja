// Services/FirebirdDataService.cs
using System;
using FirebirdSql.Data.FirebirdClient; // Upewnij się, że masz ten using
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Threading.Tasks;
using aplikacja.Models;
using System.Linq;
using System.Text;

namespace aplikacja.Services
{
    public class FirebirdDataService
    {
        private readonly string _connectionString;

        public FirebirdDataService()
        {
            // Ustaw swój connection string tutaj
            _connectionString = "User=SYSDBA;Password=masterkey;Database=localhost:C:\\path\\to\\database.fdb;DataSource=localhost;Charset=UTF8";
        }

        public async Task<List<Item>> GetItemsAsync()
        {
            var items = new List<Item>();

            using var connection = new FbConnection(_connectionString);
            await connection.OpenAsync();

            var command = new FbCommand("SELECT Id, Name FROM Items", connection);

            using var reader = await command.ExecuteReaderAsync();
            while (await reader.ReadAsync())
            {
                items.Add(new Item
                {
                    Id = reader.GetInt32(0),
                    Name = reader.GetString(1)
                });
            }

            return items;
        }
    }
}

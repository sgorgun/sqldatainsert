using System;
using System.Data;
using Microsoft.Data.Sqlite;

namespace SqlDataInsert.Tests.Helpers
{
    public static class SqliteHelper
    {
        public static SqliteConnection Connection { get; private set; }

        static SqliteHelper()
        {
            var connectionString = new SqliteConnectionStringBuilder
            {
                Mode = SqliteOpenMode.Memory
            }.ConnectionString;
            Connection = new SqliteConnection(connectionString);
        }

        public static void OpenConnection(string fileName)
        {
            Connection.Open();

            var connectionString = new SqliteConnectionStringBuilder
            {
                DataSource = fileName,
                Mode = SqliteOpenMode.ReadOnly
            }.ConnectionString;

            using var source = new SqliteConnection(connectionString);
            source.Open();
            source.BackupDatabase(Connection);
            source.Close();
        }

        public static void CloseConnection()
        {
            if (Connection.State is ConnectionState.Open)
                Connection.Close();
        }

        public static int CountRows(string tableName)
        {
            var countCmd = new SqliteCommand($"SELECT COUNT(*) FROM {tableName}", Connection);
            return Convert.ToInt32(countCmd.ExecuteScalar());
        }
    }
}
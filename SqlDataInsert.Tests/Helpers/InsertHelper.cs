using System.Text.RegularExpressions;

namespace SqlDataInsert.Tests.Helpers
{
    internal static class InsertHelper
    {
        private static readonly Regex InsertRegExp = new Regex(@"^\s*INSERT\s+INTO.*\s*VALUES");

        public static bool ContainsCorrectInsertInstruction(string query) => InsertRegExp.IsMatch(query.ToUpper());
    }
}

using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Oracle.DataAccess.Client;
public class ConnectionManager
{

    public static OracleConnection OraConnection()
    {
        // Get the connection string from the configuration file
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;

        // Create a new connection object
        OracleConnection connection = new OracleConnection(connectionString);

        // Open the connection, and return it
        connection.Open();
        return connection;
    }

}

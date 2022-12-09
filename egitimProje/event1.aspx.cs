using MySql.Data;
using MySql.Data.MySqlClient;
using System;
using System.Activities.Statements;
using System.Data;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class event1 : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u0983472_db682;Uid=u0983472_user682;Pwd=r8Z@4hKbq7OA=1@:;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sbmt_Click(object sender, EventArgs e)
    {
        string _connStr = "Server=localhost;Database=u0983472_db682;Uid=u0983472_user682;Pwd=r8Z@4hKbq7OA=1@:;";
        string _query = "INSERT INTO answers1 (userId,eventId,answer) values (@userId,@eventId,@answer)";
        using (MySqlConnection conn = new MySqlConnection(_connStr))
        {
            using (MySqlCommand comm = new MySqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                comm.Parameters.AddWithValue("@userId", Session["userId"].ToString());
                comm.Parameters.AddWithValue("@eventId", "1");
                comm.Parameters.AddWithValue("@answer", txt.Text);
                try
                {
                    conn.Open();
                    comm.ExecuteNonQuery();
                }
                catch (MySqlException ex)
                {
                }
            }
        }
        Response.Redirect("cong.aspx");
    }
}
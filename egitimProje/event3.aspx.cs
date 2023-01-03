using MySql.Data;
using MySql.Data.MySqlClient;
using System;
using System.Activities.Statements;
using System.Data;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class event3 : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sbmt_Click(object sender, EventArgs e)
    {
        string _connStr = "Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;";
        string _query = "INSERT INTO answers3 (userId,eventId,answer) values (@userId,@eventId,@answer)";
        using (MySqlConnection conn = new MySqlConnection(_connStr))
        {
            using (MySqlCommand comm = new MySqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                comm.Parameters.AddWithValue("@userId", Session["userId"].ToString());
                comm.Parameters.AddWithValue("@eventId", "3");
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
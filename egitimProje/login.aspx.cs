using MySql.Data;
using MySql.Data.MySqlClient;
using System;
using System.Activities.Statements;
using System.Data;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u0983472_db682;Uid=u0983472_user682;Pwd=r8Z@4hKbq7OA=1@:;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        MySqlCommand komut = new MySqlCommand("SELECT name FROM egitim WHERE phone='" + txtPhone.Text + "' AND psw='" + txtPsw.Text + "'", baglanti);
        komut.Connection = baglanti;
        try
        {
            string username = komut.ExecuteScalar().ToString();
            Session["ogrenci"] = username;
            baglanti.Close();
            Response.Redirect("Default.aspx");
        }
        catch
        {
            alert.Attributes.Add("style", "display:block;");
            baglanti.Close();
        }
    }
}
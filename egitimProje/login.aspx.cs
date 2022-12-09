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
        MySqlCommand komut = new MySqlCommand("SELECT NameSurname FROM egitim WHERE phone='" + txtPhone.Text + "' AND password='" + txtPsw.Text + "'", baglanti);
        MySqlCommand komut2 = new MySqlCommand("SELECT userId FROM egitim WHERE phone='" + txtPhone.Text + "' AND password='" + txtPsw.Text + "'", baglanti);
        komut.Connection = baglanti;
        komut2.Connection = baglanti;
        try
        {
            string username = komut.ExecuteScalar().ToString();
            string userId = komut2.ExecuteScalar().ToString();
            Session["ogrenci"] = username;
            Session["userId"] = userId; 
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
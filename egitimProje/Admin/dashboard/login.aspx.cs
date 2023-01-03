using MySql.Data.MySqlClient;
using System;
using System.Web;
using System.Activities.Statements;
using System.Data;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection("Server=localhost;Database=u1019084_db407;Uid=u1019084_user407;Pwd=s@iCQ1vH3:5-3.Oe;");
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
            Session["admin"] = username;
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
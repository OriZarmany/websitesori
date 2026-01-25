using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{


    public string st = "";




protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) return;

        string firstName = Request.Form["firstname"];
        string lastName = Request.Form["lastname"];
        string region = Request.Form["region"];
        string email = Request.Form["email"];
        string password = Request.Form["password"]; 
        string fan = Request.Form["fan"];
        string age = Request.Form["age"];
        string reason = Request.Form["reason"];
        string pasword = Request.Form["password"];
        string gmail = Request.Form["gmail"];

        string[] players = Request.Form.GetValues("players") ?? new string[0];

        string sql =
           "SELECT * FROM [dbo].[table] " +
           "WHERE email = N'" + email + "' ";
        bool exists = MyAdoHelper.IsExist(sql);

        if (!exists)
        {

            lblOut.Text =
            "שם פרטי: " + Server.HtmlEncode(firstName) + "<br/>" +
            "שם משפחה: " + Server.HtmlEncode(lastName) + "<br/>" +
            "אוהד מכבי: " + Server.HtmlEncode(fan) + "<br/>" +
            "שחקנים אהובים: " + Server.HtmlEncode(string.Join(", ", players)) + "<br/>" +
            "גיל: " + Server.HtmlEncode(age) + "<br/>" +
            "למה אתה אוהב את מכבי: " + Server.HtmlEncode(reason)
        + "<br/>" +
            "סיסמה: " + Server.HtmlEncode(password) + "<br/>" +
        "אימייל: " + Server.HtmlEncode(gmail) + "<br/>";

            MyAdoHelper.DoQuery("MyDB.mdf",lblOut.Text);
            Response.Redirect("login.aspx");
        }
        else
        {
            st = "המשתמש קיים במערכת";
        }
    }
}

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
        string password = Request.Form["password"];
        string gmail = Request.Form["gmail"];

        string[] players = Request.Form.GetValues("players") ?? new string[0];

        //if (string.IsNullOrWhiteSpace(firstName) ||
        //    string.IsNullOrWhiteSpace(lastName) ||
        //    string.IsNullOrWhiteSpace(email) ||
        //    string.IsNullOrWhiteSpace(password))
        //{
        //    lblOut.Text = "אנא מלא את כל השדות החובה.";
        //    return;
        //}

        //if (string.IsNullOrWhiteSpace(region))
        //{
        //    lblOut.Text = "אנא בחר אזור.";
        //    return;
        //}

        //if (players.Length == 0 || players == null)
        //{
        //    lblOut.Text = "אנא בחר לפחות שחקן אחד אהוב.";
        //    return;
        //}

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
    }
}

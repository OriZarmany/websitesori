using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string firstName = Request.Form["firstname"];
        string lastName = Request.Form["lastname"];
        string fan = Request.Form["fan"];
        string age = Request.Form["age"];
        string reason = Request.Form["reason"];

        string[] players = Request.Form.GetValues("players") ?? new string[0];

        lblOut.Text =
            "שם פרטי: " + Server.HtmlEncode(firstName) + "<br/>" +
            "שם משפחה: " + Server.HtmlEncode(lastName) + "<br/>" +
            "אוהד מכבי: " + Server.HtmlEncode(fan) + "<br/>" +
            "שחקנים אהובים: " + Server.HtmlEncode(string.Join(", ", players)) + "<br/>" +
            "גיל: " + Server.HtmlEncode(age) + "<br/>" +
            "למה אתה אוהב את מכבי: " + Server.HtmlEncode(reason);
    }
}

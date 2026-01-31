using System;
using System.Web;
using System.Web.UI;

public partial class _Default : Page
{


    public string st = "";




protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) return;

        string email = Request.Form["email"];
        string password = Request.Form["password"];
        string firstName = Request.Form["firstname"];
        string lastName = Request.Form["lastname"];
        string region = Request.Form["region"];
        string fan = Request.Form["fan"];
        string age = Request.Form["age"];
        string reason = Request.Form["reason"];

        string[] playersArr = Request.Form.GetValues("players");
        string players = playersArr != null ? string.Join(", ", playersArr) : "";

        string sql =
          "SELECT * FROM [dbo].[table] " +
          "WHERE email = N'" + email + "' ";
        bool exists = MyAdoHelper.IsExist(sql);

        if (exists)
        {
            st = "משתמש קיים במערכת עם המייל הזה";
            return;
        }


        string sqlInsert =
            "INSERT INTO [dbo].[table] " +
            "(email, password, firstName, lastName, region, fan, age, reason, players) " +
            "VALUES (" +
            "N'" + email + "'," +
            "N'" + password + "'," +
            "N'" + firstName + "'," +
            "N'" + lastName + "'," +
            "N'" + region + "'," +
            fan + "," +
            age + "," +
            "N'" + reason + "'," +
            "N'" + players + "'" +
            ")";

        MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
        st = "נרשמת בהצלחה!";
        Response.Redirect("login.aspx");
    }
}

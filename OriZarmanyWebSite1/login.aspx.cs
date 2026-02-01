using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) return;

        string email = Request.Form["email"];
        string pass = Request.Form["password"];

        string sql =
            "SELECT * FROM [dbo].[table] " +
            "WHERE email = N'" + email + "' " +
            "AND password = N'" + pass + "'";

        bool exists = MyAdoHelper.IsExist(sql);

        if (exists)
            st = "אימייל או סיסמה שגויים";
        else
            st = "משתמש אותר בהצלחה";
    }
}

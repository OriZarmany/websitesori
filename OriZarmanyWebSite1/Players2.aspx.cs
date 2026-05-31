using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Players2 : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack) return;

        string pn = Request.Form["playerName"];
        string sql = "SELECT * FROM tPlayers WHERE playerName LIKE N'%" + pn + "%'";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "אין נתנוים";
        }
        else
        {
            st += "<table class='playersTable'>";
            st += "<tr>";
            st += "<th></th>";
            st += "<th>שם השחקן</th>";
            st += "<th>מספר השחקן</th>";
            st += "<th>כמה עונות השחקן במכבי</th>";
            st += "<th>גיל השחקן</th>";
            st += "</tr>";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    st += "<td style='padding:5px; text-align:center;'>" + dt.Rows[i][k] + "</td>";
                }
                st += "</tr>";
            }
            st += "</table>";
        }
        ltTable.Text = st;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class multi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int n = 10;
        string html = "<table border='1' cellpadding='5'>";

        html += "<tr><td>×</td>";
        for (int i = 1; i <= n; i++)
            html += "<td>" + i + "</td>";
        html += "</tr>";

        for (int i = 1; i <= n; i++)
        {
            html += "<tr>";
            html += "<td><b>" + i + "</b></td>";

            for (int j = 1; j <= n; j++)
                html += "<td>" + (i * j) + "</td>";

            html += "</tr>";
        }

        html += "</table>";

        lblTable.Text = html;
    }
}

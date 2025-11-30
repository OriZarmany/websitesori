using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kefel : System.Web.UI.Page
{
    public string strkefel;
    protected void Page_Load(object sender, EventArgs e)
    {
        //str = "<font style=color yellow>" + i +</ font >;
        strkefel = "<table>";
        for (int i = 1; i <= 10; i++)
        {
            strkefel += "<tr>";
            for (int j = 1; j <= 10; j++)
            {
                strkefel += "<td>";
                strkefel += i * j;
                strkefel += "</td>";
            }
            strkefel += "</tr>";
        }
        strkefel += "</table>";


    }
}
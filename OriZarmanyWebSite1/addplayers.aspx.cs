using System;
using System.Web;

public partial class addplayers : System.Web.UI.Page
{

    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string playerName = Request.Form["playerName"];
            string playerNumber = Request.Form["playerNumber"];
            string theplayerssesonsatMaccabi = Request.Form["theplayerssesonsatMaccabi"];
            string playerage = Request.Form["playerage"];

            string sqlInsert =
                "INSERT TPLAYERS (PlayerName, playerNumber, theplayerssesonsatMaccabi, playerage) VALUES (" +
                "N'" + playerName + "', " +
                 playerNumber + ", " +
                  theplayerssesonsatMaccabi + ", " +
                  playerage + 
                ")";
            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

           st = "DONE";
        }

    }
}
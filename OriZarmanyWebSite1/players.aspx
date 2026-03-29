<%@ Page Language="C#" AutoEventWireup="true" CodeFile="players.aspx.cs" Inherits="players" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Players</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>סגל הקבוצה:</h2>

        <div>
            <label>שם שחקן:</label>
            <input type="text" name="playerName" />
            <input type="submit" value="חפש" />
        </div>
        <asp:Literal ID="ltTable" runat="server"></asp:Literal>
    </form>
</body>
</html>

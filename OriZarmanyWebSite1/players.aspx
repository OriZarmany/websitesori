<%@ Page Language="C#" AutoEventWireup="true" CodeFile="players.aspx.cs" Inherits="players" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Players</title>
<style>
    .playersTable {
        border-collapse: collapse;
        width: 100%;
        margin-top: 10px;
    }

    .playersTable th {
        background-color: #ffd700;
        color: #0033cc;
        padding: 8px;
        text-align: center;
    }

    .playersTable td {
        padding: 8px;
        text-align: center;
        border: 1px solid #0033cc;
    }

    .playersTable tr:nth-child(even) {
        background-color: #f0f8ff;
    }

    .playersTable tr:nth-child(odd) {
        background-color: #fffacd;
    }
    </style>
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

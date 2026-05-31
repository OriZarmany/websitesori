<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Players2.aspx.cs" Inherits="Players2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        <title > Players</title >

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <h2>סגל הקבוצה:</h2>

        <div>
            <label>שם שחקן:</label>
            <input type="text" name="playerName" />
            <input type="submit" value="חפש" />
        </div>
        <asp:Literal ID="ltTable" runat="server"></asp:Literal>
</asp:Content>


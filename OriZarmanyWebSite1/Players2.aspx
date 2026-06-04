<%@ Page Title="סגל השחקנים - מכבי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Players2.aspx.cs" Inherits="Players2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Players</title>
    <style>
        .page-layout {
            display: flex;
            direction: rtl;
            gap: 40px;
            align-items: flex-start;
            margin-top: 20px;
        }

        .main-content {
            flex: 1;
            max-width: 600px;
        }

        .main-content h2 {
            margin-top: 0;
            margin-bottom: 15px;
        }

        .side-image-container {
            flex-shrink: 0;
        }

        .side-image {
            width: 450px;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .search-area {
            margin-bottom: 15px;
        }

        .playersTable {
            border-collapse: collapse;
            width: 100%;
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
    <div style="direction: rtl; padding: 20px;">
        
        <div class="page-layout">
            <div class="side-image-container">
                <img src="images/תמונת%20סגל%20מכבי.jpg" class="side-image" alt="סגל מכבי" />
            </div>

            <div class="main-content">
                <h2>סגל הקבוצה:</h2>
                
                <div class="search-area">
                    <label>שם שחקן:</label>
                    <input type="text" name="playerName" />
                    <input type="submit" value="חפש" />
                </div>
                
                <asp:Literal ID="ltTable" runat="server"></asp:Literal>
            </div>
        </div>
        
    </div>
</asp:Content>
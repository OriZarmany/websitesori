<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .box {
            max-width: 420px;
            margin: 0 auto;
        }

        .row {
            margin-bottom: 12px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 600;
        }

        .input {
            width: 100%;
            box-sizing: border-box;
            padding: 8px 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .btn {
            padding: 10px 14px;
            border: 0;
            border-radius: 8px;
            cursor: pointer;
            background: #16a34a;
            color: #fff;
        }

        .msg {
            margin-top: 12px;
            padding: 10px;
            border-radius: 8px;
            background: #fef2f2;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
        <h2>התחברות</h2>

        <div class="row">
            <label>אימייל:</label>
            <input class="input" type="text" name="email" />
        </div>

        <div class="row">
            <label>סיסמה:</label>
            <input class="input" type="text" name="password" />
        </div>

        <div class="row">
            <input class="btn" type="submit" value="התחבר" />
        </div>

        <% if (!string.IsNullOrEmpty(st))
            { %>
        <div class="msg"><%= st %></div>
        <% } %>
    </div>
</asp:Content>

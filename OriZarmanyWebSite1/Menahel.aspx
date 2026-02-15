<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Menahel.aspx.cs" Inherits="Menahel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Manager</h1>
  
            <div class="row">
            <label>שם פרטי:</label>
            <input class="input" type="text" name="firstname" />
        </div>

        <div class="row">
            <label>שם משפחה:</label>
            <input class="input" type="text" name="lastname" />
        </div>

    
        <div class="row">
            <input class="btn" type="submit" value="שלח" />
        </div>

    <%=st %>
</asp:Content>


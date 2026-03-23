<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addplayers.aspx.cs" Inherits="addplayers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>הוסף שחקן</h2>
    <label>שם השחקן:</label>
        <input type="text" name="playerName" /><br />
    <label> מספר השחקן </label>
    <input type="number" name="playerNumber" /><br />
    <label>כמה עונות השחקן משחק במכבי?:</label>
    <input type="number" name="theplayerssesonsatMaccabi" /><br />
    <label>גיל השחקן:</label>
    <input type="number" name="playerage" /><br />
    <input type="submit" value="הוסף שחקן" />

<br /><br />
        <strong><%= st %></strong>
       <%= st %>
</asp:Content>


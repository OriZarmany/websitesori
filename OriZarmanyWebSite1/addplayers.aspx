<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addplayers.aspx.cs" Inherits="addplayers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
        <script language="javascript">
        function checkAll() {
            alert("addplayers");
            return true;
        }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>הוסף שחקן</h2>
    <label>שם השחקן:</label>
        <input type="text" name="playerName" id="playerName"/><br />
  <span class="error" id="playerNameError"> </span>
    <label> מספר השחקן </label>
    <input type="number" name="playerNumber" id="playerNumber"/><br />
   <span class="error" id="playerNumberError"> </span>
    <label>כמה עונות השחקן משחק במכבי?:</label>
    <input type="number" name="theplayerssesonsatMaccabi" id="theplayerssesonsatMaccabi" /><br />
   <span class="error" id="theplayerssesonsatMaccabiError"> </span>
    <label>גיל השחקן:</label>
    <input type="number" name="playerage" id="playerage" /><br />
   <span class="error" id="playerageError"> </span>
    <input type="submit" value="הוסף שחקן" />

<br /><br />
        <strong><%= st %></strong>
       <%= st %>
</asp:Content>


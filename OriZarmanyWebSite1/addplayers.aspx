<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addplayers.aspx.cs" Inherits="addplayers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
        <script language="javascript">
        function checkAll() {
            document.getElementById("playerNameError").innerHTML = "";
            document.getElementById("playerNumberError").innerHTML = "";
            document.getElementById("theplayerssesonsatMaccabiError").innerHTML = "";
            document.getElementById("playerageError").innerHTML = "";
            
            let f = true;

            f = checkName() && f;
            f = checkNumber() && f;
            f = checkSeasons() && f;
            f = checkAge() && f;

            return f;
            }
            function checkName() {
                let name = document.getElementById("playerName").value;
                if (name.length <= 2 || name.length > 40 || /\d/.test(name)) {
                    document.getElementById("playerNameError").innerHTML = "שם שחקן חייב להיות 3-40 תווים וללא מספרים";
                    return false;
                }
                return true;
            }

            function checkNumber() {
                let num = document.getElementById("playerNumber").value;
                if (num === "" || isNaN(num) || num < 0 || num > 99) {
                    document.getElementById("playerNumberError").innerHTML = "מספר שחקן חייב להיות בין 0-99";
                    return false;
                }
                return true;
            }

            function checkSeasons() {
                let seasons = document.getElementById("theplayerssesonsatMaccabi").value;
                if (seasons === "" || isNaN(seasons) || seasons <= 0) {
                    document.getElementById("theplayerssesonsatMaccabiError").innerHTML = "חובה להזין מספר עונות גדול מ-0";
                    return false;
                }
                return true;
            }

            function checkAge() {
                let age = document.getElementById("playerage").value;
                if (age === "" || isNaN(age) || age < 1 || age > 120) {
                    document.getElementById("playerageError").innerHTML = "חובה להזין גיל תקין (1-120)";
                    return false;
                }
                return true

            return f; 
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


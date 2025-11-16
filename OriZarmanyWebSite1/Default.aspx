<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
     <h2><form action="/action_page.php">
    <p>הרשמה:</p>
    <label for="fname">שם פרטי:</label><br>
    <input type="text" id="fname" name="fname" value=""><br>
    <label for="lname"> משפחה:</label><br>
    <input type="text" id="lname" name="lname" value=""><br><br>
    <p>אוהד מכבי:</p>
    <input type="radio" id="html" name="fav_language" value="HTML">
    <label for="html">כן</label><br>
    <input type="radio" id="css" name="fav_language" value="CSS">
    <label for="css">לא</label><br>
    <p>שחקנים שאת אוהב</p>
    <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
    <label for="vehicle1"> שחקן 1</label><br>
    <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
    <label for="vehicle2"> שחקן 2</label><br>
    <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
    <label for="vehicle3"> שחקן 3</label><br><br>
    <p>תאריך לידה:</p>
    <label for="birthdaytime">תאריך לידה (כולל שעה) :</label>
    <input type="datetime-local" id="birthdaytime" name="birthdaytime">

    <input type="submit" value="Submit">
</form></h2>  
</asp:Content>


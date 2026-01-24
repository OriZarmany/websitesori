
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
   <h2>טופס אוהדי מכבי</h2>

<label>שם פרטי:</label><br />
<input type="text" name="firstname" />
<br /><br />

<label>שם משפחה:</label><br />
<input type="text" name="lastname" />
<br /><br />

<p>האם אתה אוהד מכבי?</p>
<input type="radio" name="fan" value=1 checked /> כן<br />
<input type="radio" name="fan" value=0 /> לא<br />
<br />

<label>אזור:</label>
<select name="region">
    <option value="צפון">צפון</option>
    <option value="מרכז">מרכז</option>
    <option value="דרום">דרום</option>
</select>
    <br /><br />

<p>שחקנים שאתה אוהב:</p>
<input type="checkbox" name="players" value="לוני ווקר" /> לוני ווקר<br />
<input type="checkbox" name="players" value="גור לביא" /> גור לביא<br />
<input type="checkbox" name="players" value="תמיר בלאט" /> תמיר בלאט<br />
<br />

<label>גיל:</label><br />
    <input type="number" name="age" min="1" max="120" />
<br /><br />

<label>למה אתה אוהב את מכבי?</label><br />
<textarea name="reason" rows="4" cols="40"></textarea>
<br /><br />
    
<p>סיסמה</p>
<input type="text" name="pasword" />
    <br /></br>

    <p>אימייל</p>
<input type="text" name="email" />
    <br /></br>

<input type="submit" value="שלח" />
<br /><br />

<hr />

<b>תוצאות:</b><br />
<asp:Label ID="lblOut" runat="server" />
</div>
</asp:Content>


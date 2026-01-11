
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
<input type="radio" name="fan" value="כן" checked /> כן<br />
<input type="radio" name="fan" value="לא" /> לא<br />
<br />

<p>שחקנים שאתה אוהב:</p>
<input type="checkbox" name="players" value="לוני ווקר" /> לוני ווקר<br />
<input type="checkbox" name="players" value="גור לביא" /> גור לביא<br />
<input type="checkbox" name="players" value="תמיר בלאט" /> תמיר בלאט<br />
<br />

<label>גיל:</label><br />
<select name="age">
    <option value="">בחר גיל</option>
    <option value="10-15">10–15</option>
    <option value="16-20">16–20</option>
    <option value="21-30">21–30</option>
    <option value="31+">31+</option>
</select>
<br /><br />

<label>למה אתה אוהב את מכבי?</label><br />
<textarea name="reason" rows="4" cols="40"></textarea>
<br /><br />
<p>סיסמה</p>
  <input type="text" name="password" />
    <br /><br />
    <p>אימייל</p>
    <input type="text" name="gmail" />
<input type="submit" value="שלח" />
<br /><br />

<hr />

<b>תוצאות:</b><br />
<asp:Label ID="lblOut" runat="server" />
</div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript">
        function checkAll() {

            firstnameError.innerHTML = "";
            lastnameError.innerHTML = "";
            emailError.innerHTML = "";
            passwordError.innerHTML = "";
            inlineError.innerHTML = "";
            ageError.innerHTML = "";
            reasonError.innerHTML = "";

            let f = true;

            f = checkFirstName() && f;
            f = checkLastName() && f;
            f = checkEmail() && f;
            f = checkPassword() && f;
            f = checkFan() && f;
            f = checkAge() && f;
            f = checkReason() && f;

            return f;
        }

        function checkFirstName() {
            let val = document.getElementById("firstname").value;
            let err = document.getElementById("firstnameError");

            if (val.length < 2 || val.length > 20 && !/\d/.test(val)) {
                err.innerHTML = "שם פרטי לא תקין";
                return false;
            }
            return true;
        }

        function checkLastName() {
            let val = document.getElementById("lastname").value;
            let err = document.getElementById("lastnameError");

            if (val.length < 2 || val.length > 20 && !/\d/.test(val)) {
                err.innerHTML = "שם משפחה לא תקין";
                return false;
            }
            return true;
        }

        function checkEmail() {
            let val = document.getElementById("email").value;
            let err = document.getElementById("emailError");

            if (val.length < 5 || val.length > 30 || !val.includes("@")) {
                err.innerHTML = "אימייל לא תקין";
                return false;
            }
            return true;
        }

        function checkPassword() {
            let val = document.getElementById("password").value;
            let err = document.getElementById("passwordError");

            let hasLetters = /[a-zA-Z]/.test(val);
            let hasNumbers = /\d/.test(val);

            if (val.length < 6 || val.length > 20 && !hasLetters && !hasNumbers) {
                err.innerHTML = "סיסמה לא תקינה";
                return false;
            }
            return true;
        }

        function checkFan() {
            let radios = document.getElementsByName("fan");
            let err = document.getElementById("inlineError");

            let selected = false;
            for (let i = 0; i < radios.length; i++) {
                if (radios[i].checked) {
                    selected = true;
                    break;
                }
            }

            if (!selected) {
                err.innerHTML = "יש לבחור כן או לא";
                return false;
            }

            return true;
        }

        function checkAge() {
            let val = document.getElementById("age").value;
            let err = document.getElementById("ageError");

            if (val === "" || isNaN(val) || val < 1 || val > 120) {
                err.innerHTML = "גיל לא תקין";
                return false;
            }
            return true;
        }

        function checkReason() {
            let val = document.getElementById("reason").value;
            let err = document.getElementById("reasonError");

            if (val.length < 5 ) {
                err.innerHTML = "נא למלא סיבה";
                return false;
            }
            return true;
        }

     
    </script>
    <style>
        .box {
            max-width: 520px;
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

        .input, select, textarea {
            width: 100%;
            box-sizing: border-box;
            padding: 8px 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .inline {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
            align-items: center;
        }

        .btn {
            padding: 10px 14px;
            border: 0;
            border-radius: 8px;
            cursor: pointer;
            background: #2563eb;
            color: #fff;
        }

        .msg {
            margin-top: 12px;
            padding: 10px;
            border-radius: 8px;
            background: #f3f4f6;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="box">
        <h2>טופס אוהדי מכבי</h2>

        <div class="row">
            <label>אימייל:</label>
            <input class="input" type="text" name="email" id="email"/>
            <span class="error" id="emailError"> </span>
        </div>

        <div class="row">
            <label>סיסמה:</label>
            <input class="input" type="text" name="password" id="password"/>
            <span class="error" id="passwordError"> </span>
        </div>



        <div class="row">
            <label>שם פרטי:</label>
            <input class="input" type="text" name="firstname" id="firstname" />
            <span class="error" id="firstnameError"> </span>
        </div>

        <div class="row">
            <label>שם משפחה:</label>
            <input class="input" type="text" name="lastname" id="lastname"/>
             <span class="error" id="lastnameError"> </span>
        </div>

        <div class="row">
            <label>האם אתה אוהד מכבי?</label>
            <div class="inline" id="inline">
                <label>
                    <input type="radio" name="fan" value="1" checked />
                    כן</label>
                <label>
                    <input type="radio" name="fan" value="0" />
                    לא</label>
                 <span class="error" id="inlineError"> </span>
            </div>
        </div>

        <div class="row">
            <label>אזור:</label>
            <select class="input" name="region" id="region">
                <option value="צפון">צפון</option>
                <option value="מרכז">מרכז</option>
                <option value="דרום">דרום</option>
            </select>
        </div>

        <div class="row">
            <label>שחקנים שאתה אוהב:</label>
            <label>
                <input type="checkbox" name="players" value="גון דיברתולומאו" />
                גון דיברתולומאו</label>
            <label>
                <input type="checkbox" name="players" value="גבריאל לונברג" />
                גבריאל לונדברג
            </label>
            <label>
                <input type="checkbox" name="players" value="גיילן הורד" />
                גיילן הורד</label>
            <label>
                <input type="checkbox" name="players" value="גימי קלארק" />
                גימי קלארק</label>
            <label>
                <input type="checkbox" name="players" value="מרסין סנטוס" />מרסין סנטוס
            </label>
            <label>
                <input type="checkbox" name="players" value="אורן סהר" />
                אורן סהר</label>
            <label>
                <input type="checkbox" name="players" value="גור לביא" />
                גור לביא</label>
            <label>
                    <input type="checkbox" name="players" value="עמית אבו" />
    עמית אבו</label>
<label>
                <input type="checkbox" name="players" value="לוני ווקר" />
                לוני ווקר</label>
            <label>
                <input type="checkbox" name="players" value="רומן סורקין" />
                רומן סורקין
            </label>
            <label>
                <input type="checkbox" name="players" value="אושיי בריסט" />אושיי בריסט
            </label>
            <label>
                <input type="checkbox" name="players" value="וויל רימן" />
                וויל ריימן</label>
            <label>
                <input type="checkbox" name="players" value="תמיר גולד" />
                גתמירר גולד</label>
            <label>
                <input type="checkbox" name="players" value="גף דאוטין גוניור" />
                גף דאוטין גוניור</label>
            <label>
                <input type="checkbox" name="players" value="טי.גיי ליף" />
                טי.גיי ליף
            </label>
            <label>
                <input type="checkbox" name="players" value="זאק הנקינס" />
                זאק הנקינס</label>
            <label>
                <input type="checkbox" name="players" value="תמיר בלאט" />
                תמיר בלאט</label>

            <span class="error" id="regionError"> </span>
        </div>

        <div class="row">
            <label>גיל:</label>
            <input class="input" type="number" name="age1" min="1" max="120" id="age"/>
            <span class="error" id="ageError"> </span>
        </div>

        <div class="row">
            <label>למה אתה אוהב את מכבי?</label>
            <textarea class="input" name="reason" id="reason" rows="4" cols="40"></textarea>
                        <span class="error" id="reasonError"> </span>
        </div>

        <div class="row">
            <input class="btn" type="submit" value="שלח" />
        </div>


        <% if (!string.IsNullOrEmpty(st))
            { %>
        <div class="msg"><%= st %></div>
        <% } %>
    </div>
</asp:Content>

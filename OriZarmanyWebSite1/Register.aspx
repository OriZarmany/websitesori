<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            <input class="input" type="text" name="email" />
        </div>

        <div class="row">
            <label>סיסמה:</label>
            <input class="input" type="text" name="password" />
        </div>



        <div class="row">
            <label>שם פרטי:</label>
            <input class="input" type="text" name="firstname" />
        </div>

        <div class="row">
            <label>שם משפחה:</label>
            <input class="input" type="text" name="lastname" />
        </div>

        <div class="row">
            <label>האם אתה אוהד מכבי?</label>
            <div class="inline">
                <label>
                    <input type="radio" name="fan" value="1" checked />
                    כן</label>
                <label>
                    <input type="radio" name="fan" value="0" />
                    לא</label>
            </div>
        </div>

        <div class="row">
            <label>אזור:</label>
            <select class="input" name="region">
                <option value="צפון">צפון</option>
                <option value="מרכז">מרכז</option>
                <option value="דרום">דרום</option>
            </select>
        </div>

        <div class="row">
            <label>שחקנים שאתה אוהב:</label>
            <label>
                <input type="checkbox" name="players" value="ג'ון דיברתולומאו" />
                ג'ון דיברתולומאו</label>
            <label>
                <input type="checkbox" name="players" value="גבריאל לונברג" />
                גבריאל לונדברג
            </label>
            <label>
                <input type="checkbox" name="players" value="ג'יילן הורד" />
                ג'יילן הורד</label>
            <label>
                <input type="checkbox" name="players" value="ג'ימי קלארק" />
                ג'ימי קלארק</label>
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
                <input type="checkbox" name="players" value="ג'ף דאוטין ג'וניור" />
                ג'ף דאוטין ג'וניור</label>
            <label>
                <input type="checkbox" name="players" value="טי.ג'יי ליף" />
                טי.ג'יי ליף
            </label>
            <label>
                <input type="checkbox" name="players" value="זאק הנקינס" />
                זאק הנקינס</label>
            <label>
                <input type="checkbox" name="players" value="תמיר בלאט" />
                תמיר בלאט</label>


        </div>

        <div class="row">
            <label>גיל:</label>
            <input class="input" type="number" name="age" min="1" max="120" />
        </div>

        <div class="row">
            <label>למה אתה אוהב את מכבי?</label>
            <textarea class="input" name="reason" rows="4" cols="40"></textarea>
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

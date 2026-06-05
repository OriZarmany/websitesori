<%@ Page Title="אודות - המועדון של מכבי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="multi.aspx.cs" Inherits="multi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .about-container {
            direction: rtl;
            text-align: right;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            font-family: Arial, sans-serif;
        }

        .about-container h2 {
            color: #003399;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .about-container h3 {
            color: #333;
            font-size: 20px;
            margin-top: 25px;
            margin-bottom: 15px;
            border-bottom: 2px solid #ffcc00;
            padding-bottom: 5px;
        }

        .about-container p {
            font-size: 16px;
            line-height: 1.6;
            color: #555;
            margin-bottom: 15px;
        }

        .about-container ul {
            list-style-type: square;
            margin-right: 20px;
            padding-right: 0;
        }

        .about-container li {
            margin-bottom: 10px;
            font-size: 16px;
            line-height: 1.5;
        }

        .profile-img {
            display: block;
            margin: 30px auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <div class="about-container">
        
        <h2>נעים להכיר, אני אורי זרמני</h2>
        <p>בן 16 מכפר סבא, ומאז שאני זוכר את עצמי אני אוהד שרוף של מכבי. זו בדיוק הסיבה שהחלטתי להקים את האתר הזה.
            אני גם ממש אוהב כדורסל ואוהב ללכת לצפות במכבי
            כל פעם שאני בא ליד אליהו (האולם של מכבי) אני מתרגש מחדש לא משנה נגד איזה קבוצה.
            הייתי כבר במאות משחקים של מכבי בארץ ובחול וכבר יודע הכל על ההיסטוריה של מכבי.
            ומכאן רציתי להביא את הידע שלי במכבי לכל האוהד שרוצה לדעת יותר על המועדון הגדול בישראל.
        </p>
        
        <h3>באתר זה ניתן לקבל את העדכונים החמים ביותר של מכבי, ביניהם:</h3>
        
        <ul>
            <li><strong>פרופיל שחקנים מורחב:</strong> הכירו לעומק את הלוחמים שעל המגרש. כאן תוכלו למצוא דף אישי לכל שחקן הכולל את גילו, מספר החולצה שלו, והכי חשוב – הוותק וכמות העונות שלו במועדון.</li>
            <li><strong>גלריה נוסטלגית:</strong> הצצה לכל זכיות אירופה של מכבי לדורותיהם, הגביעים והרגעים הגדולים.</li>
            <li><strong>קהילה:</strong> בעצם להיות חלק בלתי נפרד ממשפחת מכבי המורחבת.</li>
        </ul>

        <img src="images/תמונה%20אורי%20לאתר%20של%20מכבי.png" class="profile-img" style="width:300px; height:auto;" alt="אורי זרמני" />

        <asp:Label ID="lblTable" runat="server" />
        
    </div>

</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="galerry.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .gallery-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px; 
            padding: 20px;
        }

        .gallery-item {
            text-align: center;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 8px;
            background-color: #f9f9f9;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }

        .gallery-item h2 {
            font-size: 1.2rem;
            margin-bottom: 15px;
            color: #333;
        }

        .image-wrapper {
            width: 100%;
            height: 250px; 
            overflow: hidden;
            border-radius: 4px;
        }

        .image-wrapper img {
            width: 100%;
            height: 100%;
            object-fit: cover; 
            display: block;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="gallery-container">
        
        <div class="gallery-item">
            <h2>גביע אירופה 1977:</h2>
            <div class="image-wrapper">
                <img src="images/תמונת%20גביע%20אירופה%20מכבי%201977.png" alt="גביע אירופה 1977" />
            </div>
        </div>

        <div class="gallery-item">
            <h2>גביע אירופה 1981:</h2>
            <div class="image-wrapper">
                <img src="images/תמונת%20גביע%20אירופה%20מכבי%201981.png" alt="גביע אירופה 1981" />
            </div>
        </div>

        <div class="gallery-item">
            <h2>גביע אירופה 2001:</h2>
            <div class="image-wrapper">
                <img src="images/תמונת%20גביע%20אירופה%20מכבי%202001.png" alt="גביע אירופה 2001" />
            </div>
        </div>

        <div class="gallery-item">
            <h2>גביע אירופה 2004:</h2>
            <div class="image-wrapper">
                <img src="images/תמונת%20גביע%20אירופה%20מכבי%202004.png" alt="גביע אירופה 2004" />
            </div>
        </div>

        <div class="gallery-item">
            <h2>גביע אירופה 2005:</h2>
            <div class="image-wrapper">
                <img src="images/תמונת%20גביע%20אירופה%20מכבי%202005.png" alt="גביע אירופה 2005" />
            </div>
        </div>

        <div class="gallery-item">
            <h2>גביע אירופה 2014:</h2>
            <div class="image-wrapper">
                <img src="images/תמונת%20גביע%20אירופה%20מכבי%202014.png" alt="גביע אירופה 2014" />
            </div>
        </div>

    </div>

</asp:Content>
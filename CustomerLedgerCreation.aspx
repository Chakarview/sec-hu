<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerLedgerCreation.aspx.cs" Inherits="CustomerLedgerCreation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-wrapper">
        <div class="main-cont">
             

        <div class="lednavmenu">
            <ul>
                <li><a href="">Water</a></li>
                <li><a href="">Sewer</a></li>
                <li><a href="">Mis</a></li>
                <li><a href="">Meter</a></li>
                <li><a href="">Disconnect</a></li>
                <li><a href="">Reconnect</a></li>
            </ul>

        </div><!-- ledmenu -->

            </div><!--main content-->

        <asp:PlaceHolder ID="contplace" runat="server">



        </asp:PlaceHolder>           


    </div><!-- content wrapper--> 


 



</asp:Content>


﻿<%@ Page Language="VB" MasterPageFile="~/moderators/MasterPage.master" AutoEventWireup="false" CodeFile="modlogin.aspx.vb" Inherits="moderators_modlogin" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
Modertores Area<br />
    <table>
        <tr>
            <td  valign="top"  align="left">
                Username</td>
            <td  valign="top"  align="left">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td  valign="top"  align="left">
                Password</td>
            <td  valign="top"  align="left">
            
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
            </td>
            <td valign="top"  align="left">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="132px" /></td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </center>
</asp:Content>


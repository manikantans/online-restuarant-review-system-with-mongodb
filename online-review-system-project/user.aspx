<%@ Page Title="" Language="VB" MasterPageFile="~/site.master" AutoEventWireup="false" CodeFile="user.aspx.vb" Inherits="user" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 65px;
            height: 36px;
        }
        .auto-style3 {
            height: 36px;
            width: 556px;
        }
        .auto-style4 {
            width: 65px;
            height: 40px;
        }
        .auto-style5 {
            height: 40px;
            width: 556px;
        }
        .auto-style6 {
            width: 65px;
            height: 41px;
        }
        .auto-style8 {
            height: 41px;
            width: 556px;
        }
        .auto-style9 {
            width: 556px;
        }
        .auto-style12 {
            width: 283px;
        height: 124px;
    }
        .auto-style13 {
            width: 283px;
            height: 40px;
        }
        .auto-style14 {
            height: 40px;
        }
    .auto-style15 {
        height: 124px;
    }
        .auto-style16 {
            width: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <br /><center>
        <table style="width:100%;" align="center">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="48px" ImageUrl="~/fancybox/appbar.user.png" Width="55px" />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image2" runat="server" Height="44px" ImageUrl="~/fancybox/appbar.email.minimal.png" Width="49px" />
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Image ID="Image3" runat="server" Height="42px" ImageUrl="~/fancybox/appbar.lock.png" Width="50px" />
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                
            </tr>
            
             <tr colspan="2" >
<td class="auto-style16">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Text="Signup" />
                 </td>
            </tr>
        </table>
        <br /></center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" Text="Label"></asp:Label>
            <asp:Panel ID="Panel3" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style13">Emai ID</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style14"></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">New Password</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style14"></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Captcha</td>
                        <td class="auto-style15">
                            <dx:ASPxCaptcha ID="ASPxCaptcha1" runat="server" style="margin-top: 12px" Theme="MetropolisBlue">
                            </dx:ASPxCaptcha>
                        </td>
                        <td class="auto-style15"></td>
                    </tr>
                    <tr>
                        <td colspan="1"></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Submit" Theme="Aqua">
                            </dx:ASPxButton>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </asp:Panel>
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ2.master" AutoEventWireup="true" CodeBehind="UploadFiles.aspx.cs" Inherits="Assignment_PRN.UploadFiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="text-align: center">
    <br />
        <table style="border-collapse: collapse; background-color: #ffffff; margin-top: 0px;" 
            width="1000">  
            <tr valign="top">
                <td width="670">    
                    <table style="width: 670px; border-collapse: collapse; background-color: #ffffff;" border="1">
                        <tr>
                            <td colspan="2" width="670">
                                <asp:FileUpload ID="fuData" runat="server" Width="100%"/>
                            </td> 
                        </tr>
                        <tr>    
                            <td width="300" height="75">
                                <asp:Button ID="BtnUpload" runat="server" Text="Upload File" Width="120px" 
                                    OnClick="BtnUpload_Click1" Height="28px" Font-Names="Times New Roman" 
                                    Font-Size="Medium" ForeColor="Blue" style="margin-left: 20px" BackColor="#EBEBEB" BorderStyle="None" Font-Bold="False"/>&nbsp;<br />
                            </td>       
                            <td width="370" height="75">
                                <asp:Image ID="imgProduct1" runat="server" Height="35px" Width="35px" style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; padding-top: 3px" ImageUrl="~/Images/up01.png" /><br />
                                <asp:Label ID="lblData" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>    
                    </table>
                    <br />
                    <table style="width: 670px; border-collapse: collapse; background-color: #ffffff;" border="0">
                        <tr>
                            <td colspan="2" width="670">
                                <asp:ListBox ID="LstFile" runat="server" Width="100%" 
                                    AutoPostBack="True" onselectedindexchanged="LstFile_SelectedIndexChanged" 
                                    Height="130px">
                                </asp:ListBox>     
                            </td> 
                        </tr>
                    </table>
                    <br />
                    <table style="width: 670px; border-collapse: collapse; background-color: #ffffff;" border="1">
                        <tr> 
                            <td width="300" height="75">
                                <asp:Button ID="BtnDel" runat="server" Text="Delete File" Width="120px" 
                                OnClick="BtnDel_Click1" Height="28px" Font-Names="Times New Roman" 
                                Font-Size="Medium" ForeColor="Red" style="margin-left: 20px" BackColor="#EBEBEB" BorderStyle="None" Font-Bold="False"/>
                                <br />
                            </td> 
                           <td width="370" height="75">
                                <asp:Image ID="imgProduct2" runat="server" Height="35px" Width="35px" style="padding-right: 3px; padding-left: 3px; padding-bottom: 3px; padding-top: 3px" ImageUrl="~/Images/error.png" /><br />
                                <asp:Label ID="lblMess" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <hr />
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="39px" ImageUrl="~/Images/reload.png"
                        Style="margin-bottom: 0px" Width="39px" onclick="ImageButton1_Click" />
                        <br />
                    <hr />
                </td>
                <td width="15">
                </td>
                <td width="315">
                    <table style="border-collapse: collapse; background-color: #ffffff;" border="1" width="100%">
                        <tr>
                            <td align="center" width="100%">
                                <asp:Image ID="Image1" runat="server" Height="373px" Width="100%" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" width="100%">
                                <span style="color: red; font-family: Verdana; font-size: 10pt; text-align: center;">MapPath: </span><asp:Label ID="Label1" runat="server" style="text-align: center; margin-top: 10px;" Font-Names="Verdana" Font-Size="10pt" ForeColor="SlateBlue" Height="30px"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    <br />
</div>
</asp:Content>

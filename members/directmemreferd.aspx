<%@ Page Language="VB" MasterPageFile="~/members/MasterPage.master" AutoEventWireup="false" CodeFile="directmemreferd.aspx.vb" Inherits="members_directmemreferd" title="Direct Members Referd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><div id="body">
<asp:Label ID="label1" runat="server">
</asp:Label>
   <asp:GridView ID="gridViewPublishers" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                EmptyDataText="No records found" PagerSettings-Mode="NumericFirstLast"
               
                runat="server" Width="80%" CellPadding="4" ForeColor="#333333" 
        GridLines="None"  DataSourceID="ObjectDataSource1">
       
         
        <Columns>
        <asp:TemplateField>
        <ItemTemplate>
        <table>     
        <tr>
        <td align="left">
            <a href="viewprofile.aspx?pid=<%# Eval("pid") %>">View Profile</a><br />
            Age(<%#DateDiff(DateInterval.Year, Eval("bdate"), Date.Now)%>)
        </td> 
        </tr>
        
        <tr>
        <td align="left">
        Gender:<%# Eval("gender") %>
        </td>
        </tr>
        
        <tr>
        <td align="left">
        Purpose:<%# Eval("purpose") %>
        </td>
        </tr>
        
        <tr>
        <td align="left">
        <%#Eval("countryname")%> <br/><%#Eval("state")%><br />  <%# Eval("cityid") %>
        </td>
        </tr>
        </table>
        </ItemTemplate>
            <ControlStyle Width="10%" />
        </asp:TemplateField>
        <asp:TemplateField>
        <ItemTemplate>
        <table width="100%">
        <tr>
        <td style="word-wrap:break-word;word-break:break-all;width:450px;" valign="top">        
        <%#cf.BreakWordForWrap(Mid(Eval("whoami"), 1, 400))%>
        </td>
        </tr>
        </table>
        </ItemTemplate>        
            <ControlStyle Width="50%" />
        </asp:TemplateField>
        <asp:TemplateField>
        <ItemTemplate>
        <table>
        <tr>
        <td  style="font-size:16px;"><%# Eval("ethnic") %></td>
        </tr>
        <tr>
        <td  style="font-size:16px;"><%# Eval("religion") %> </td>
        <tr>
        <td style="font-size:10px;">
        <%#Eval("caste")%>
        </td>
        </tr>
        </tr>
        </table>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
        <ItemTemplate>
        <a href='viewprofile.aspx?pid=<%# Eval("pid")%>'>
        <asp:Image ID="img" runat="server" BorderWidth="5px" /></a>
        
        </ItemTemplate>
        </asp:TemplateField>
            <asp:BoundField DataField="passw" Visible="False" />
        </Columns>
           <PagerSettings Mode="NumericFirstLast" Position="TopAndBottom"  />
        
    </asp:GridView>
    <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:ObjectDataSource ID="ObjectDataSource1" 
        runat="server" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetProductsPaged" TypeName="classpartnersearch">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="startRowIndex" Type="Int32" />
            <asp:Parameter DefaultValue="10" Name="maximumRows" Type="Int32" />
            <asp:Parameter DefaultValue="left" Name="jointype" Type="String" />
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="" Name="sq" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
</div>    </center>
</asp:Content>


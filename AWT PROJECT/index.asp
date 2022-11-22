<!DOCTYPE html>
<HTML>
<HEAD>
<STYLE>
table, th, td {
 border: 1px solid black;
 border-collapse: collapse;
}
</STYLE>
</HEAD>
<BODY>
<% Set objBC = Server.CreateObject ("MSWC.BrowserType") %>
<B> <CENTER> BROWSER CAPABILIES COMPONENT CHECKING
<HR> <CENTER>
<TABLE>
<TR>
<TD>
<B> Created by Yukta Vairagade </B>
</TD>
<TD>
Roll no.: 122
</TD>
</TR>
<TR>
<TD>
<B> Client OS
</TD>
<TD>
<%= objBC.platform %>
</TD>
</TR>
<TR>
<TD>
Web browser
</TD>
<TD>
<%= objBC.browser %>
</TD>
</TR>
<TR>
<TD>
Browser version
</TD>
<TD>
<%= objBC.version %>
</TD>
</TR>
<TR>
<TD>
Browser Major Version
</TD>
<TD>
<%= objBC.majorver %>
</TD>
</TR>
<TR>
<TD>
Browser Minor version
</TD>
<TD>
<%= objBC.minorver %>
</TD>
</TR>
<TR>
<TD>
Frame Support? 
</TD>
<TD>
<%= objBC.tables  %>

</TD>
</TR>
<TR>
<TD>
Table Support? 
</TD>
<TD>
<%= objBC.tables %>

</TD>
</TR>
<TR>
<TD>
Sound Support?
</TD>
<TD>
<%= objBC.backgroundsounds %>

</TD>
</TR>
<TR>
<TD>
Cookies Support?
</TD>
<TD>
<%= objBC.cookies %>

</TD>
</TR>
<TR>
<TD>
VBScript support?
</TD>
<TD>
<%= objBC.vbscript %>
</TD>
</TR>
<TR>
<TD>
JavaScript Support?
</TD>
<TD>
<%= objBC.javascript %>

</TD>
</TR>
</TABLE> </CENTER>
</BODY>
</HTML>
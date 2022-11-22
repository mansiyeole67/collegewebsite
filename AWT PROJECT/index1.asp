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
<B> Name of the Web browser
</TD>
<TD>
<%= objBC.browser %>
</TD>
</TR>
<TR>
<TD>
<B> Operating system being used
</TD>
<TD>
<%= objBC.platform %>
</TD>
</TR>
<TR>
<TD>
<B> Version of the Web browser
</TD>
<TD>
<%= objBC.version %>
</TD>
</TR>
<TR>
<TD>
<B> Major version number
</TD>
<TD>
<%= objBC.majorver %>
</TD>
</TR>
<TR>
<TD>
<B> Minor version number
</TD>
<TD>
<%= objBC.minorver %>
</TD>
</TR>
<TR>
<TD>
<B> Does the Web browser support frames?
</TD>
<TD>
<%If objBC.frames Then %>
True
<%Else %>
False
<%End If %>
</TD>
</TR>
<TR>
<TD>
<B> Does the Web browser support tables?
</TD>
<TD>
<%If objBC.tables Then %>
True
<%Else %>
False
<%End If %>
</TD>
</TR>
<TR>
<TD>
<B> Does the Web browser support cookies?
</TD>
<TD>
<% If objBC.cookies Then %>
True
<%Else %>
False
<%End If %>
</TD>
</TR>
<TR>
<TD>
<B> Does the Web browser support background sounds?
</TD>
<TD>
<%If objBC.backgroundsounds Then %>
True
<%Else %>
False
<%End If %>
</TD>
</TR>
<TR>
<TD>
<B> Does the Web browser support JavaScript?
</TD>
<TD>
<% If objBC.javascript Then %>
True
<%Else %>
False
<%End If %>
</TD>
</TR>
<TR>
<TD>
<B> Does the web browser support vbscript?
</TD>
<TD>
<%If objBC.vbscript Then %>
True
<%Else %>
False
<%End If %>
</TD>
</TR>
</TABLE> </CENTER>
</BODY>
</HTML>
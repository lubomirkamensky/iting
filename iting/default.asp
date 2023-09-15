<%
Dim a,b,c,d,e,f,x,y,z,hexagram(3),prvni,druhy,treti,ctvrty,paty,sesty,tlac
Dim ID
ID =""
ID = ID & Request.QueryString("ID")
If ID = "" then ID = "8ıúùIxpOáQnV"

prvni = ""
druhy = ""
treti = ""
ctvrty = ""
paty = ""
sesty = ""


Set Conn = Server.CreateObject("ADODB.Connection")
Conn.Open  "dsn=zrcadlo3;uid=root;pwd=securemarc"
Conn.Execute("SET NAMES 'cp1250'")

x = 0
y = 0
z = 0
a = -1
b = -1
c = -1
d = -1
e = -1
f = -1
a = a + Request.QueryString("a")
b = b + Request.QueryString("b")
c = c + Request.QueryString("c")
d = d + Request.QueryString("d")
e = e + Request.QueryString("e")
f = f + Request.QueryString("f")
x = x + Request.QueryString("x")
y = y + Request.QueryString("y")
z = z + Request.QueryString("z")

If a = -1 or a = 0 then
  a = x + y + z
ElseIf a > 5 and a < 10 then
  If b = 0 then
     b = x + y + z
  ElseIf b > 5 and b < 10 then
    IF c = 0 then
       c = x + y + z
    ElseIf c > 5 and c < 10 then
      IF d = 0 then
         d = x + y + z
      ElseIf d > 5 and d < 10 then
        IF e = 0 then
           e = x + y + z
        ElseIf e > 5 and e < 10 then
          If f = 0 then
             f = x + y + z
          ElseIf f > 5 and f < 10 then
            response.redirect("default.asp")
          End IF
        End IF
      End IF
    End IF
  End IF
End IF
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
<meta name="robots" content="all">
<meta name="keywords" content="I-ing, i-ing, I ing, i ing, I ting, i ting, I-ting, i-ting, Iting, iting, Kniha promìn, vìštìní, èínská moudrost, vìštírna online, budoucnost, filozofie, kosmologie, taoismus">
<meta name="description" content="iting.timetree.info - I ing Kniha promìn, pochopte souèasnost a rozhodujte lépe o budoucnosti. Víc ne vìštírna online.">
<meta http-equiv="Expires" content="0">
<meta name="Author" content="Lubomir Kamensky">
<meta name="google-site-verification" content="zL-JQsPfqN9U0jFYq-Xw3X-LVOOVHTAmY1GMr_zHKH4" />
<title>Kniha Promìn I-ing, víc ne vìštírna online</title>
</head>
<body bgcolor="#000000" text="#FF0000" link="red" vlink="red">
<p align="center"><a href="/kniham.htm">Struènı
návod k pouití</a> 
</p>

<center>
<h1 style="width:600; margin-left: auto; margin-right: auto; text-align: center;">I-ing - Kniha promìn</h1>
<div style="color:white; width:600; margin-left: auto; margin-right: auto">
	Kniha promìn není klasickım nástrojem vìštìní budoucnosti.
	Je mnohem víc.
	Pomáhá nám vybrat si tu nejlepší monou budoucnost na základì dokonalého pochopení souèasné situace.
	Rozbor èasto sloitıch okolností pomocí vzorù vzešlıch z tisícileté moudrosti pomùe jasnìji uvidìt dobrá rozhodnutí.
	A k takovım rozhodnutím pomùe i Vám!
	<p>
		Není od vìci pøeèíst si návod: <a style="color:white;" href="http://iting.timetree.info/kniham.htm">http://iting.timetree.info/kniham.htm</a>.
		Další zajímavé informace o Knize promìn a více souvislostí s oblastmi filozofie, kosmologie a taoismu na Wikipedii: <a style="color:white;" href="http://cs.wikipedia.org/wiki/I-ing" target="_blank">http://cs.wikipedia.org/wiki/I-ing</a>.
	</p>
</div>
</center>
<br>
<% If a = 0 then %><div align="center"><center>

<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33%"><img src="/images/3.gif" width="68" height="68"
    alt="mince"></td>
    <td width="33%"><img src="/images/3.gif" width="68" height="68"
    alt="mince"></td>
    <td width="34%"><img src="/images/3.gif" width="68" height="68"
    alt="mince"></td>
  </tr>
</table>

<form method="POST" action="vrh.asp">
  <p><br><input type="submit" value="Hoï mincemi !"></p>
</form>

</center></div>

<% End If %>

<% If a > 5 and a < 10 then %>
<div align="center"><div align="center"><div align="center"><center>

<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="33%"><img src="/images/<%=x%>.gif" width="68" height="68"
    alt="mince"></td>
    <td width="33%"><img src="/images/<%=y%>.gif" width="68" height="68"
    alt="mince"></td>
    <td width="34%"><img src="/images/<%=z%>.gif" width="68" height="68"
    alt="mince"></td>
  </tr>
</table>
</center></div>

<% prvni = "<img src='/images/" & a & ".gif' width='170'>"
   tlac = "ještì pìtkrát"
   End If

   If b > 5 and b < 10 then
     druhy = "<img src='/images/" & b & ".gif' width='170'>"
     tlac = "ještì ètyøikrát"
   End If

   If c > 5 and c < 10 then
     treti = "<img src='/images/" & c & ".gif' width='170'>"
     tlac = "ještì tøikrát"
   End If

   If d > 5 and d < 10 then
     ctvrty = "<img src='/images/" & d & ".gif' width='170'>"
     tlac = "ještì dvakrát"
   End If

   If e > 5 and e < 10 then
     paty = "<img src='/images/" & e & ".gif' width='170'>"
     tlac = "ještì jednou"
   End If

   If f > 5 and f < 10 then
     sesty = "<img src='/images/" & f & ".gif' width='170'>"
     tlac = "znovu"
hexa = "" & a & b & c & d & e & f
hexa1 = ""
hexa2 = ""

If InStr(hexa, "6") > 0 or InStr(hexa, "9") > 0 then
Dim hex1(6),hex2(6)
For p = 1 To 6
 hex1(p) = Mid(hexa,p,1)
 If hex1(p) = "6" then hex1(p) ="8"
 If hex1(p) = "9" then hex1(p) ="7"
Next

For p = 1 To 6
 hex2(p) = Mid(hexa,p,1)
 If hex2(p) = "6" then hex2(p) ="7"
 If hex2(p) = "9" then hex2(p) ="8"
Next

hexa1 = hex1(1) & hex1(2) & hex1(3) & hex1(4) & hex1(5) & hex1(6)
hexa2 = hex2(1) & hex2(2) & hex2(3) & hex2(4) & hex2(5) & hex2(6)
hexa = ""
End If

   End If %>

<% If a > 5 and a < 10 then %>
<form method="POST" action="vrh.asp?a=<%=a%>&b=<%=b%>&c=<%=c%>&d=<%=d%>&e=<%=e%>&f=<%=f%>&x=<%=x%>&y=<%=y%>&z=<%=z%>">
  <p><font size="2"><input type="submit" value="<%=tlac%>" ></font> </p>
</form>
<br><br>
<table border="0" cellspacing="0" cellpadding="0">
  <tr><td>
<% =sesty %><br>
<% =paty %><br>
<% =ctvrty %><br>
<% =treti %><br>
<% =druhy %><br>
<% =prvni %>
</td>
  </tr>
</table>
<font color="#008000">----------------------------------------------------------------------------------------------------</font><br><br>
</center></div>



<% If hexa <> "" then %>
<%
 sql="SELECT * FROM iting WHERE kod = '"& hexa &"'"
 Set zaznam2 = Conn.Execute(sql)
%>
 <div align="center"><center>
<table border="0" cellspacing="0" height="131" cellpadding="5" width="600">
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa,6,1)%>.gif" width="57" height="6" ></td>
    <td rowspan="3"><%=zaznam2("horni") %></td>
    <td rowspan="6"><font size="7"><%=zaznam2("ID")%></font></td>
    <td rowspan="6"><big><strong><%=UCase(zaznam2("nazev"))%></big></strong>
    <br><%=zaznam2("vyznam")%></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa,5,1)%>.gif" width="57" height="6"></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa,4,1)%>.gif" width="57" height="6"></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa,3,1)%>.gif" width="57" height="6"></td>
    <td rowspan="3"><%=zaznam2("dolni")%></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa,2,1)%>.gif" width="57" height="6"></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa,1,1)%>.gif" width="57" height="6"></td>
  </tr>
</table>
</center></div>
<% zaznam2.Close
 End If %>

<% If hexa1 <> "" then %>
 <%
 sql="SELECT * FROM iting WHERE kod = '"& hexa1 &"'"
 Set zaznam3 = Conn.Execute(sql)
%>
 <div align="center"><center>
<table border="0" cellspacing="0" height="131" cellpadding="5" width="600">
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa1,6,1)%>.gif" width="57" height="6" ></td>
    <td rowspan="3"><%=zaznam3("horni") %></td>
    <td rowspan="6"><font size="7"><%=zaznam3("ID")%></font></td>
    <td rowspan="6"><big><strong><%=UCase(zaznam3("nazev"))%></big></strong>
    <br><%=zaznam3("vyznam")%></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa1,5,1)%>.gif" width="57" height="6"></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa1,4,1)%>.gif" width="57" height="6"></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa1,3,1)%>.gif" width="57" height="6"></td>
    <td rowspan="3"><%=zaznam3("dolni")%></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa1,2,1)%>.gif" width="57" height="6"></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa1,1,1)%>.gif" width="57" height="6"></td>
  </tr>
</table>
</center></div>
<% zaznam3.Close
 End If %>

<% If hexa2 <> "" then %>
 <%
 sql="SELECT * FROM iting WHERE kod = '"& hexa2 &"'"
 Set zaznam4 = Conn.Execute(sql)
%>
 <div align="center"><center>
<font color="#008000">----------------------------------------------------------------------------------------------------</font><br><br>
<table border="0" cellspacing="0" height="131" cellpadding="5" width="600">
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa2,6,1)%>.gif" width="57" height="6" ></td>
    <td rowspan="3"><%=zaznam4("horni") %></td>
    <td rowspan="6"><font size="7"><%=zaznam4("ID")%></font></td>
    <td rowspan="6"><big><strong><%=UCase(zaznam4("nazev"))%></big></strong>
    <br><%=zaznam4("vyznam")%></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa2,5,1)%>.gif" width="57" height="6"></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa2,4,1)%>.gif" width="57" height="6"></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa2,3,1)%>.gif" width="57" height="6"></td>
    <td rowspan="3"><%=zaznam4("dolni")%></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa2,2,1)%>.gif" width="57" height="6"></td>
  </tr>
  <tr>
    <td><img src="/images/mini/<%=Mid(hexa2,1,1)%>.gif" width="57" height="6"></td>
  </tr>
</table>
</center></div>
<% zaznam4.Close
 End If %>


<p align="center">
<font color="#008000">----------------------------------------------------------------------------------------------------</font>
<div style="color:white; width:600; margin-left: auto; margin-right: auto;">
	Tato stránka je volnì pøístupná pro všechny díky zobrazování reklamy v pravé èásti.
	Google øíká, e tam zobrazuje jen reklamu, která souvisí s tímto tématem.
	Pokud Vás tam nìco zaujme, tak to prosím provìøte.
</div>
<br><br>
<font color="#008000" size="1">
(Citace vykladù hexagramù z knihy: Richter Johan, Kapesní I-ing, Bratislava 1997)<br><br><br>
</font>
</p>
<% End If %>
<%

 Conn.Close
%>
<p align="center">

</p>
<span style="position: absolute; top: 10px; right: 10px;">
<script type="text/javascript"><!--
google_ad_client = "pub-7820443912133417";
/* I-ing Kniha promìn (sloupec) */
google_ad_slot = "3577311948";
google_ad_width = 160;
google_ad_height = 600;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</span>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-9065784-3");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>
</html>

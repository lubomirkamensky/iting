<%
Dim a,b,c,d,e,f,x,y,z
a = 1
b = 1
c = 1
d = 1
e = 1
f = 1
a = a + Request.QueryString("a")
b = b + Request.QueryString("b")
c = c + Request.QueryString("c")
d = d + Request.QueryString("d")
e = e + Request.QueryString("e")
f = f + Request.QueryString("f")

Randomize
x = Int(2* Rnd) +2
y = Int(2* Rnd) +2
z = Int(2* Rnd) +2

response.redirect("default.asp?a=" & a & "&b=" & b & "&c=" & c _
& "&d=" & d & "&e=" & e & "&f=" & f & "&x=" & x & "&y=" & y & "&z=" & z  )
%>


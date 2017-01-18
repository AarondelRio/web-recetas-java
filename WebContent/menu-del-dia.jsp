<%@page import="com.ipartek.formacion.hola.pojo.Receta"%>

<a href="index.jsp">Volver al Inicio</a>

<%
	//esto es un scriptlet y sirve para escribir java
	for (int i=1; i<=6;i++){
		out.print("<h"+ i +">Cabecera H" + i + "</h" + i +">");
		
	}
	String saludo = "Ongi Etorri";
%>
<p>Saludo: <%= saludo %></p>


<%
	Receta marmitako = new Receta("Marmitako");
	marmitako.setImagen("http://www.clubcampos.com/upload/recetas/gourmet_elaboradas/MarmitakodeAtunCampos.jpg");
	Receta solomillo = new Receta("Solomillo");
	solomillo.setImagen("http://scontent.cdninstagram.com/t51.2885-15/s480x480/e35/15258718_236619610083473_6800323450352173056_n.jpg?ig_cache_key=MTQwNDU4MDUzOTA4Mzk3MzU2NQ%3D%3D.2");
	Receta goxua = new Receta("Goxua");
	goxua.setImagen("http://scontent.cdninstagram.com/t51.2885-15/s480x480/e35/14515648_1792917087615137_6463100390844923904_n.jpg?ig_cache_key=MTM5MDE2OTM5OTkzMTc2NzkzNQ%3D%3D.2");
%>
<h1>Menu del dia: 10</h1>
<h2><%=marmitako.getTitulo() %></h2>
<img src="<%=marmitako.getImagen() %>" />

<h2><%=solomillo.getTitulo() %></h2>
<img src="<%=solomillo.getImagen() %>" />

<h2><%=goxua.getTitulo() %></h2>
<img src="<%=goxua.getImagen() %>" />

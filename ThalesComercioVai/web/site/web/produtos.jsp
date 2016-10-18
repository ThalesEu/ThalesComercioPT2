<%@page import="modelo.Marca"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.MarcaDAO"%>
<%@page import="modelo.Produto"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProdutoDAO"%>
<%@include file="cabecalho.jsp" %> 

<%
ProdutoDAO fdao = new ProdutoDAO();
List<Produto> flista;
if(request.getParameter("marca")!=null){
    flista = fdao.listar(Integer.parseInt(request.getParameter("marca")), "M");
}else{
    if(request.getParameter("categoria")!=null){
    flista = fdao.listar(Integer.parseInt(request.getParameter("categoria")), "C");
}
    else{
        flista = fdao.listar();
    }
}

%>
<html>
<head>
<title>Swim Wear a E-Commerce online Shopping Category Flat Bootstrap Responsive Website Template | Products :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/owl.carousel.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
	<!-- cart -->
		<script src="js/simpleCart.min.js"> </script>
	<!-- cart -->
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- //the jScrollPane script -->
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
		<!-- the mousewheel plugin -->
		<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
</head>
<body>
	
					<!-- //search-scripts -->
					<div class="clearfix"></div>
			<!--header-->
			<div class="content">
	<div class="product-model">	 
	 <div>
                                   <h1 class="text-center">Categorias</h1>
                    <div class="list-group">
                     <font style="text-align:center">    <%for (Categoria citem : clista) {%>
                        <a href="produtos.jsp?categoria=<%out.print(citem.getCodigo());%>" class="list-group-item"><%out.print(citem.getNome());%></a>

                        <%}%></font>
                    </div>
                </div>
                <div>
                    <h1 class="text-center">Marca</h1>
                    <div class="list-group">
                        <font style="text-align:center">  <%for (Marca mitem : mlista) {%>
                        <a href="produtos.jsp?marca=<%=mitem.getCodigo()%>" class="list-group-item"><%=mitem.getNome()%></a>
                        <%}%></font>
                    </div>
                </div>
		<h2>PRODUTOS</h2>			
						
					                            <%for(Produto Pitem: flista) { %>
                            <div class="col-md-3 gallery-grid ">
                                    <a href="single.jsp?codigo=<%=Pitem.getCodigo()%>"> <img src="../../imagens/<%=Pitem.getImagem1() %>" width="250" height="265" class="img-responsive" alt=""/>
                                    <div class="gallery-info">
                                    <div class="quick">
                                    <p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
                                    </div>
                                    </div></a>
                                    <div class="galy-info">
                                           código: <%=Pitem.getCodigo() %>
                                           <h3><%=Pitem.getTitulo() %></h3>
                                            <div class="galry">
                                            <div class="prices">
                                                <h5 class="item_price">Preço: <font color=green>R$<%=Pitem.getPreco() %></font></h5>
                                            </div>
                                    <div class="rating">
                                                                    <span>1</span>
                                                                    <span>2</span>
                                                                    <span>3</span>
                                                                    <span>4</span>
                                                                    <span>5</span>
                                                            </div>

                                    </div>
                                    </div>
                            </div>
                            <% } %>
					</div>
								   
		
					 <!---->
  
				   
				 
				    
			 </div>				 		
</body>
</html>
<%@page import="dao.ProdutoDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Produto"%>
<%@include file="cabecalho.jsp" %> 
<% 
    if (request.getParameter("codigo") == null || request.getParameter("codigo").isEmpty()) {
        response.sendRedirect("index.jsp");
        return;
    }
    Produto p = pdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
    plista = pdao.listarP(3, p.getCodcategoria().getCodigo(), p.getCodmarca().getCodigo(),p.getCodigo());
%>
<html>
<head>
<title>Swim Wear a E-Commerce online Shopping Category Flat Bootstrap Responsive Website Template| Single :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/owl.carousel.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>

<!-- cart -->
		<script src="js/simpleCart.min.js"> </script>
	<!-- cart -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<script src="js/imagezoom.js"></script>

						<!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>



</head>
<body>

					<div class="clearfix"></div>
	<div class="content">
		<div class="single">
			<div class="container">

				<div class="single-grids">
					<div class="col-md-4 single-grid">
						<div class="flexslider">

							<ul class="slides">
								<li data-thumb="../../imagens/<%=p.getImagem1() %>">
									<div class="thumb-image"> <img src="../../imagens/<%=p.getImagem1() %>" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="../../imagens/<%=p.getImagem2() %>">
									 <div class="thumb-image"> <img src="../../imagens/<%=p.getImagem2() %>" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="../../imagens/<%=p.getImagem3() %>">
								   <div class="thumb-image"> <img src="../../imagens/<%=p.getImagem3() %>" data-imagezoom="true" class="img-responsive"> </div>
								</li> 
							</ul>
						</div>
					</div>	
					<div class="col-md-4 single-grid simpleCart_shelfItem">		
						 <h1><%=p.getTitulo()%></h1>
                    <p class="availability">Disponibilidade: <span class="color"><font color="blue">
                            <%if (p.getQuant() > 0) {
                            out.print("Disponível");
                       } else {
                            out.print("Indisponível");
                    }%></font></span></p>
							<p><%=p.getDescricao()%></p>
							<div class="galry">
								<div class="prices">
                                                                    <h5 class="item_price"> <font color='green'>R$<%=p.getPreco()%></font></h5>
								</div>
								<div class="rating">
									<span>5</span>
									<span>4</span>
									<span>3</span>
									<span>2</span>
									<span>1</span>
								</div>
								<div class="clearfix"></div>
							</div>
								Quantidade:<p>  <select>
                                <%for(int i = 1;i<=p.getQuant();i++){%>
                                <option value="<%=i%>" name="quantidade"><%=i%></option>
                               
                                <%}%>
                            </select> </p>
							<div class="btn_form">
								<a href="#" class="add-cart item_add">ADD TO CART</a>	
							</div>
							<div class="tag">
								<p>Categoria : <a href="produtos.jsp?categoria=<%=p.getCodcategoria().getCodigo()%>"><%=p.getCodcategoria().getNome()%></a></p>
								<p>Marca :<a href="produtos.jsp?marca=<%=p.getCodmarca().getCodigo()%>"><%=p.getCodmarca().getNome()%></a></p>
							</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>

<%@include file="rodape.jsp" %>			
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Creusa Lima</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.css">
<link rel="css/estilos.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Creusa Lima</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="Controlador?accion=home">Home <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Ofertas
						do Dia</a></li>

				<li class="nav-item"><a class="nav-link"
					href="Controlador?accion=home">Seguir Comprando</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Iniciar Sesion </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>
		</div>
	</nav>
	<div class="container mt-4">
		<h3>Carrito</h3>
		<br>
		<div class="row">
			<div class="col-sm-8">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ITEM</th>
							<th>NOMES</th>
							<th>DESCRICAO</th>
							<th>PRECO</th>
							<th>QUANTIDADE</th>
							<th>SUBTOTAL</th>
							<th>ACOES</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="car" items="${carrito}">
							<tr>
								<td>${car.getItem()}</td>
								<td>${car.getNombres()}</td>
								<td>${car.getDescription()}<img
									src="ControladorIMG?id=${car.getIdProducto()}" width="100"
									height="100">
								</td>
								<td>${car.getPrecioCompra()}</td>
								<td><input type="hidden" id="idpro"
									value="${car.getIdProducto()}"> <input type="number"
									id="Cantidad" value="${car.getCantidad()}"
									class="form-control text-center" min="1"></td>
								<td>${car.getSubTotal()}</td>
								<td><input type="hidden" id="idp"
									value="${car.getIdProducto()}"> <a href="#"
									id="btnDelete">Eliminar</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
			<div class="col-sm-4">
				<div class="card">
					<div class="card-header">
						<h3>Gerar Compras</h3>
					</div>
					<div class="card-body">
						<label>Subtotal:</label> <input type="text"
							value="R$ ${totalPagar}0" readonly="" class="form-control">
						<label>Desconto:</label> <input type="text" value="R$ 0.00"
							readonly="" class="form-control"> <label>Total
							Pagar</label> <input type="text" value="R$ ${totalPagar}0" readonly=""
							class="form-control">
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-info btn-block">Realizar Pago</a> 
						<a href="Controlador?accion=GenerarComprar"
							class="btn btn-danger btn-block">Generar Compra</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"
		integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript" src="/js/funciones.js">
	</script>
	</script>
</body>
</html>
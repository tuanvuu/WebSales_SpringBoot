<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:forEach var="p" items="${list}">
	<div class="col-sm-4">
		<div class="thumbnail">
			<a href="/product/detail/${p.id}"> <img
				src="/static/images/products/${p.image}" class="estore-prod">
			</a>
			<div class="caption">
				<p>${p.name}</p>
				<div class="pull-right">
					<button class="btn btn-sm btn-danger">
						<i class="glyphicon glyphicon-shopping-cart"></i>
					</button>
					<button class="btn btn-sm btn-warning">
						<i class="glyphicon glyphicon-star"></i>
					</button>
					<button class="btn btn-sm btn-success">
						<i class="glyphicon glyphicon-envelope"></i>
					</button>
				</div>
				<p>${p.unitPrice}</p>
			</div>


		</div>
	</div>
</c:forEach>

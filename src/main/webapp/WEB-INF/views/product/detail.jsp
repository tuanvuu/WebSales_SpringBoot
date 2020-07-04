<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<div class="row">
	<div class="col-sm-5 text-center">
		<img src="/static/images/products/${prod.image}" class="detail-img">
	</div>
	<div class="col-sm-7">
		<ul class="detail-info">
			<li>Name :${prod.name}</li>
			<li>UnitPrice :<f:formatNumber value="${prod.unitPrice}"
					pattern="#,###.00" /></li>
			<li>Product Date : <f:formatDate value="${prod.productDate}"
					pattern="dd-MM-yyyy" /></li>
			<li>Category : ${prod.category.nameVN}</li>
			<li>Quantity : ${prod.quantity}</li>
			<li>Discount : <f:formatNumber value="${prod.discount}"
					type="percent" /></li>
			<li>View Count : ${prod.viewCount}</li>
			<li>Available :${prod.available?'YES':'NO'}</li>
			<li>Special :${prod.special?'YES':'NO'}</li>

		</ul>
		<div>${prod.description}</div>

	</div>
</div>

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

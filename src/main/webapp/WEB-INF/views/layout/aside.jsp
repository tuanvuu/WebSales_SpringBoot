<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="panel panel-default">
	<div class="panel-heading">Shopping Cart</div>
	<div class="panel-body">
		<img alt="" src="/static/images/shoppingcart.gif" class="col-sm-5">
		<ul class="col-sm-7">
			<li>10 mặt hàng</li>
			<li>150 ngàn</li>
			<li><a href="">Xem giỏ hàng</a></li>
		</ul>
	</div>
</div>


<div class="panel panel-default">
	<div class="panel-heading">TÌM KIẾM</div>
	<div class="panel-body">
		<form action="/product/list-by-keywords">
			<input name="keywords" class="form-control" placeholder="Tìm kiếm" />
		</form>
	</div>
</div>
<div class="panel panel-default">
	<div class="panel-heading">DANH MỤC HÀNG HÓA</div>
	<div class="list-group">
		<c:forEach var="c" items="${cates}">
			<a href="/product/list-by-category/${c.id}" class="list-group-item">${c.nameVN}</a>
		</c:forEach>

	</div>

</div>


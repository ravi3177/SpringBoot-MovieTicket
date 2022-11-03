<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<c:url var="homeSearch" value="/home/movie?tid=" />

<br>
<nav aria-label="breadcrumb" role="navigation">
	<ol class="breadcrumb">

		<li class="breadcrumb-item active" aria-current="page">Welcome</li>
	</ol>
</nav>
 <b><%@ include file="businessMessage.jsp"%></b>
<sf:form action="${pageContext.request.contextPath}/welcome" method="post" modelAttribute="form">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
				<div class="row">
					<div class="col">
						<s:bind path="name">
								<sf:input path="${status.expression}" placeholder="Enter Name" class="form-control" />
							</s:bind>
					</div>
					<div class="col">
					<s:bind path="city">
								<sf:input path="${status.expression}" placeholder="Enter City" class="form-control" />
							</s:bind>
					</div>
					
					<div class="col">
						<input type="submit" name="operation"
								class="btn btn-primary pull-right" value="Search">
					</div>
				</div>
		</div>
	</div>
</div>
<hr>
<sf:input type="hidden" path="id" />

		<sf:input type="hidden" path="pageNo" />
		<sf:input type="hidden" path="pageSize" />

		<sf:input type="hidden" path="listsize" />
		<sf:input type="hidden" path="total" />
		<sf:input type="hidden" path="pagenosize" />
<div class="container">
	<div class="row">
		<div class="col-lg-12">
		<c:forEach items="${list}" var="th" varStatus="cs">
			<div class="card" style="width: 18rem;">
				<img src="${pageContext.request.contextPath}/theater/getImage/<c:out value='${th.id}'/>" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">${th.name}</h5>
					<p class="card-text">Type : ${th.type}
						|| City : ${th.city}
					</p>
					<a href="${homeSearch}${th.id}" class="btn btn-primary">See Movie</a>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</div>
</sf:form>

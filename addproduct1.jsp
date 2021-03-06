<%@include file="adminheader.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add product</title>
</head>
<body>
	<form:form method="POST" action="aprod" commandName="product"
		enctype="multipart/form:data">
		<table>
			<tr>
				<td>Product Id</td>
				<td><form:input type="text" path="id" /></td>
			</tr>
			<tr>
				<td>Prod Name</td>
				<td><form:input type="text" path="name" /></td>
			</tr>
			<tr>
				<td>Prod Description</td>
				<td><form:input type="text" path="description" /></td>
			</tr>
			<tr>
				<td>Prod Price</td>
				<td><form:input type="number" path="price" /></td>
			</tr>
			<tr>
				<td>Supplier</td>
				<td><form:select path="id" items="${supplierList}"
						itemsValue="name" itemValue="name"></form:select></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><form:select path="id" items="${categoryList}"
						itemsValue="name" itemValue="name"></form:select></td>
			</tr>
			<tr>
				<td>Prod Image</td>
				<td><form:input type="file" path="image" /></td>
			</tr>


			<tr>
				<td colspan="2"><input type="submit" value="Submit" /> <input
					type="submit" value="Cancel" /></td>
			</tr>
		</table>
	</form:form>

</body>

</html>

<%@include file ="adminheader.jsp"%>
	<form method="POST" action="acat">
		<center>
			<table>
				<h2>Add Category</h2>
				<tr>
					<td>Id</td>
					<td><input type="text" name="id"></td>
				</tr>
				<br>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
				</tr>
				<br>
				<tr>
					<td>Description</td>
					<td><input type="text" name="description"></td>
				</tr>
				<br>
				<tr>
					<td><input type="submit" value="submit"></td>
					<td><input type="reset" value="reset"></td>
			</table>
		</center>
	</form>
</body>
</html>

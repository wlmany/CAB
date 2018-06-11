<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="cab"%>
<!DOCTYPE html5 PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<cab:headImports />
<title>Update Facility</title>
</head>
<body>
	<cab:nav />
	<h1 style="text-align: center;">Update Facility</h1>
	<hr>
	<div class="container">
		<div class="card mt-5">
			<form action="" method="post" class="col-12 card-body">
				<div class="row">
					<div class="col-4">
						<img
							src="https://images.pexels.com/photos/20787/pexels-photo.jpg?auto=compress&cs=tinysrgb&h=350"
							id="" class="rounded img-fluid" alt="Facility Image">
						<button type="button" class="btn" onclick="">Change Image</button>
						<input type="file" id="my_file" hidden>
					</div>
					<div class="col-8">
						<div class="input-group mb-3">
							<input type="text" class="form-control" aria-label="FacilityID"
								aria-describedby="InputGroup-sizing-default"
								placeholder="FacilityID-autogenerated" disabled />
						</div>
						<div class="input-group mb-3">
							<select required id="facility-type" class="form-control">
								<option value="facility-type" selected disabled>Facility Type</option>
								<option value="Type1">type 1</option>
								<option value="Type2">type 2</option>
							</select>
						</div>
						<div class="input-group mb-3">
							<input type="text" class="form-control" aria-label="facility-name"
								aria-describedby="InputGroup-sizing-default" placeholder="Facility Name" required />
						</div>
						<div class="input-group mb-3">
							<input type="text" class="form-control" aria-label="facility-address"
								aria-describedby="InputGroup-sizing-default"
								placeholder="Facility Address" required/>
						</div>
						<div class="input-group mb-3">
							<textarea class="form-control" rows="3" id="facility-description"
								placeholder="Facility Description" required></textarea>
						</div>
						<div class="form-check">
							<label class="form-check-label"> <input class="form-check-input"
								id="facility-unusable" type="checkbox" value="" required> Facility is
								unusable
							</label>
						</div>
						<button type="submit" class="btn btn-primary mb-3" onclick="">Update</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
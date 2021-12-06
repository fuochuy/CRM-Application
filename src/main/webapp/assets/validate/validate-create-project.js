function validateProjectForm() {

	let name = document.forms["projectForm"]["name"].value;
	let description = document.forms["projectForm"]["description"].value;
	let startDate = document.forms["projectForm"]["startDate"].value;
	let endDate = document.forms["projectForm"]["endDate"].value;

	if (name == "") {
		alert("Name must be filled out");
		document.forms["projectForm"]["name"].focus();
		return false;
	}

	
	if (description == "") {
		alert("Description must be filled out");
		document.forms["projectForm"]["description"].focus();
		return false;
	}

	if (startDate == "") {
		alert("Start Date must be chosen");
		document.forms["projectForm"]["startDate"].focus();
		return false;
	}
	
	if (endDate == "") {
		alert("End Date must be chosen");
		document.forms["projectForm"]["endDate"].focus();
		return false;
	}

	if(startDate > endDate){
		alert("End date must be later than start date");
		document.forms["projectForm"]["endDate"].focus();
		return false;
	}	
}
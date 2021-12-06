function validateTaskForm() {

	let name = document.forms["taskForm"]["name"].value;
	let description = document.forms["taskForm"]["description"].value;
	let startDate = document.forms["taskForm"]["startDate"].value;
	let endDate = document.forms["taskForm"]["endDate"].value;

	if (name == "") {
		alert("Name must be filled out");
		document.forms["taskForm"]["name"].focus();
		return false;
	}

	
	if (description == "") {
		alert("Description must be filled out");
		document.forms["taskForm"]["description"].focus();
		return false;
	}

	if (startDate == "") {
		alert("Start Date must be chosen");
		document.forms["taskForm"]["startDate"].focus();
		return false;
	}
	
	if (endDate == "") {
		alert("End Date must be chosen");
		document.forms["taskForm"]["endDate"].focus();
		return false;
	}

	if(startDate > endDate){
		alert("End date must be later than start date");
		document.forms["taskForm"]["endDate"].focus();
		return false;
	}	
}
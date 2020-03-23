// Function to encode a string to base64 format
function encode(str) {
	encodedString = btoa(str);
    $scope.output.setValue(encodedString, 1);
}

// Function to decode a string from base64 format
function decode(str) {
    decodedString = atob(str);
    $scope.input.setValue(decodedString);
}

function SignIn() {
    const username = encode(document.getElementById("username").value);
    const pwd = encode(document.getElementById("password").value);
    location.href = '/signin?un=' + username + '&pwd=' + pwd;
}

function AddPlan() {
    var plan = prompt("Enter your trip: ");
    var budget = prompt("Enter your budget: ");
    location.href = '/plan?plan=' + plan;
}
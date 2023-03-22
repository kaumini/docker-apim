import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "fork comp",
	id: "fork comp-037c1425-ee5a-441a-afb9-8b54f031833e"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}

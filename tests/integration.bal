import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service /hello on new http:Listener(9090) {

    # A resource representing an invokable API method
    # accessible at `/hello/sayHello`.
    #
    # + return - A string payload which eventually becomes 
    #            the payload of the response
    resource function get sayHello() returns string {
        return "Hello Ballerina!";
    }
}
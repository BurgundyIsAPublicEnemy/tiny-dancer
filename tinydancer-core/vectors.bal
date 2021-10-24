import ballerina/io;

class Vector {
    float[] values;

    function init(float[] n) {
        if (n.length() == 0){
            self.values = [0,0];
        }
        else {
            self.values = n;
        }
    }

    function getVector() returns float[]{
        return self.values;
    }

    function dotProduct(float[] b) returns float {
        if (self.values.length() == b.length()){
            float[] tmp = [];
            foreach int i in 0 ..< self.values.length() {
                tmp.push(self.values[i] * b[i]);
            }
            return sum(tmp);
        } else {
            io:println("Vectors must be the same length");
        }
    }

    function add(float[] b) returns float[] {
        if (self.values.length() == b.length()){
            float[] tmp = [];
            foreach int i in 0 ..< self.values.length() {
                tmp.push(self.values[i] + b[i]);
            }
            return tmp;
        } else {
            io:println("Vectors must be the same length");
        }
    }

    function subtract(float[] b) returns float[] {
        if (self.values.length() == b.length()){
            float[] tmp = [];
            foreach int i in 0 ..< self.values.length() {
                tmp.push(self.values[i] - b[i]);
            }
            return tmp;
        } else {
            io:println("Vectors must be the same length");
        }
    }

    
    #function norm() returns float {
    #    float[] tmp = [];
    #    foreach int i in 0 ..< self.values.length() {
    #            tmp.push(self.values[i] - self.values[i]);
    #    }
    #    return math:cbrt(sum(tmp));
    #}
}

isolated function sum(float[] v) returns float {
    float r = 0.0;

        foreach float x in v {
        r += x;
    }

    return r;
}

public function main() {
    # Can init
    Vector m = new Vector([1,3]);

    # Can calculate the dot product of two 
    io:println(m.dotProduct([1,4]));

    # Can calculate the norm of a vector (magnitude) 
    # io:println(m.norm());

}

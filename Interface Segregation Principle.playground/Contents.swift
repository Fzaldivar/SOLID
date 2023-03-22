import Foundation

//Interface Segregation Principle (ISP)

//It states that clients should not be forced to implement interfaces they don’t use. Instead of one fat interface, many small interfaces are preferred based on groups of methods, each one serving one submodule.


// ERROR

protocol Worker {
    func eat()
    func work()
}

class Human: Worker {
    func eat() {
        print("eating")
    }
    
    func work() {
        print("working")
    }
}


class Robot: Worker {
    func eat() {
        // Robots can't eat!
        fatalError("Robots does not eat!")
    }
    
    func work() {
        print("working")
    }
}

// SOLUTION

protocol Feedable {
    func eat()
}

protocol Workable {
    func work()
}

class Human: Feedable, Workable {
    func eat() {
        print("eating")
    }
    
    func work() {
        print("working")
    }
}

class Robot: Workable {
    func work() {
        print("working")
    }
}

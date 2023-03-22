import Foundation

// Liskov Substitution Principle
// Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it.
// This principle can help you to use inheritance without messing it up.

// ERROR

class RectangleMistake {
    var witdh: Float = 0
    var height: Float = 0
    
    func set(witdh: Float) {
        self.witdh = witdh
    }
    
    func set(height: Float) {
        self.height = height
    }
    
    func calculateArea() -> Float {
        return witdh * height
    }
}

class SquareMistake: RectangleMistake {
    override func set(witdh: Float) {
        self.witdh = witdh
        self.height = witdh
    }
    
    override func set(height: Float) {
        self.height = height
        self.witdh = witdh
    }
}

//breaks the lsp
func setSizeAndPrint(of rectangle: RectangleMistake) {
    rectangle.set(height: 5)
    rectangle.set(witdh: 4)
    print(rectangle.calculateArea())
}

func exampleMistake() {
    let rectangle = RectangleMistake()
    setSizeAndPrint(of: rectangle)
    
    let square = SquareMistake()
    setSizeAndPrint(of: square)
}

// SOLUTION

protocol Polygon {
    func calculateArea() -> Float
}

class Rectangle: Polygon {
    
    var witdh: Float = 0
    var height: Float = 0
    
    func set(witdh: Float) {
        self.witdh = witdh
    }
    
    func set(height: Float) {
        self.height = height
    }
    func calculateArea() -> Float {
        return witdh * height
    }
}

class Square: Polygon {
    
    var side: Float = 0
    
    func set(side: Float) {
        self.side = side
    }
    func calculateArea() -> Float {
        pow(side, 2)
    }
}

func printArea(polygon: Polygon) {
    print(polygon.calculateArea())
}

func example() {
    let rectangle = Rectangle()
    rectangle.set(witdh: 4)
    rectangle.set(height: 5)
    print(printArea(polygon: rectangle))

    let square = Square()
    square.set(side: 4)
    printArea(polygon: square)
}

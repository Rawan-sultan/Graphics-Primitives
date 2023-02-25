import UIKit

struct Point {
    var x: Double
    var y: Double
}

struct Line {
    var start: Point
    var end: Point
    func lineLength() -> Double {
        let length = sqrt(pow(start.x - end.x, 2) + pow(start.y - end.y, 2))
        return length
}
}

struct Triangle {

    let points: [Point]
    
    func calculateArea() -> Double{
        let a:Point = points[0]
        let b:Point = points[1]
        let c:Point = points[2]
        let area = abs(((a.x * (b.y - c.y) + b.x * (c.y - a.y) + c.x * (a.y - b.y)) / 2))
        return area
    }
}

var line = Line(start: Point(x: 9, y: 3), end: Point(x: 7, y: 1))

let x =  Point(x: 3, y: 7)
let y =  Point(x: -5, y: 1)
let z =  Point(x: 2, y: -7)
let triangleArray:[Point] = [x,y,z]
var traingle = Triangle(points: triangleArray)

//traingle
var length = line.lineLength()
print("Length is ",length)

print("\n Area traingle is ",traingle.calculateArea())

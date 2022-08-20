// nested functions are by default are restricted to the enclosing functions unless you specify it

import Foundation

struct Point {
    let x: Double
    let y:Double
}

enum DistanceTechnique {
    case eucledian
    case eucledianSquared
    case manhattan
}

func calculateDistance(start: Point, end: Point, technique: DistanceTechnique) -> Double {

    func calculateEucledianDistanceSquared(start: Point, end: Point) ->Double {
        let deltaX = start.x - end.x
        let deltaY = start.y - end.y

        return deltaX * deltaX + deltaY * deltaY
    }

    func calculateEuclideanDistance(start: Point, end: Point) -> Double {
        return sqrt(calculateEucledianDistanceSquared(start: start, end: end))
    }

    func calculateManhattanDistance(start: Point, end: Point) -> Double {
        return abs(start.x - end.x) + abs(start.y - end.y)
    }

    switch technique {
        case .eucledian : 
            return calculateEuclideanDistance(start: start, end: end)
        case .eucledianSquared: 
            return calculateEucledianDistanceSquared(start: start, end: end)
        case .manhattan: 
            return calculateManhattanDistance(start: start, end: end)
    }
}

let distance = calculateDistance(start: Point(x: 10, y: 10), end: Point(x: 100, y: 100), technique: .eucledian)

print(distance)
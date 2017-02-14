import Foundation
import UIKit

var teams = [Team]()
var selectedTeam : Team?
var newTeam : Team?

class Team {
    var name : String
    var rating : String
    var image : UIImage
    var number : Int
    var hasAuto : Bool
    var positionFromBoiler : Int
    var passedBreakLine : Bool
    var highGoals : Int
    var placedGears : Int
    
    init(name: String, number: Int, rating: String, image: UIImage,
         hasAuto : Bool, positionFromBoiler : Int, passedBreakLine : Bool,
         highGoals : Int, placedGears : Int) {
        self.name = name
        self.rating = rating
        self.image = image
        self.number = number
        self.hasAuto = hasAuto
        self.positionFromBoiler = positionFromBoiler
        self.passedBreakLine = passedBreakLine
        self.highGoals = highGoals
        self.placedGears = placedGears
    }
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
        self.image = UIImage(named: "FIRST-horizontal")!
        self.rating = "1Stars"
        hasAuto = false
        positionFromBoiler = 1
        passedBreakLine = false
        highGoals = 0
        placedGears = 0
    }
}



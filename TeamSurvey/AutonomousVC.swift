import UIKit

class AutonomousVC: UIViewController {
    
    @IBOutlet weak var hasAutoControl: UISegmentedControl!
    @IBOutlet weak var positionControl: UISegmentedControl!
    @IBOutlet weak var breakLineControl: UISegmentedControl!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if hasAutoControl.selectedSegmentIndex == 0 {
            newTeam?.hasAuto = true
            print("set last team hasAuto=true")
        } else {
            newTeam?.hasAuto = false
        }
        
        if positionControl.selectedSegmentIndex == 0 {
            newTeam?.positionFromBoiler = 1
        } else if positionControl.selectedSegmentIndex == 1 {
            newTeam?.positionFromBoiler = 2
            print("set last team position to 2")
        } else {
            newTeam?.positionFromBoiler = 3
        }
        
        if hasAutoControl.selectedSegmentIndex == 0 {
            newTeam?.passedBreakLine = true
            print("set last team break line to true")
        } else {
            newTeam?.passedBreakLine = false
        }
        
    }

   

}

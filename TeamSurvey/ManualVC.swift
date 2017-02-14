
import UIKit

class ManualVC: UIViewController {

    @IBOutlet weak var highGoalsStepper: UIStepper!
    @IBOutlet weak var placedGearsStepper: UIStepper!
    
    @IBOutlet weak var highGoalsLabel: UILabel!
    @IBOutlet weak var placedGearsLabel: UILabel!
    
    @IBAction func highGoalsValueChanged(_ sender: Any) {
        highGoalsLabel.text = "\(Int(highGoalsStepper.value))"
    }
    
    @IBAction func placedGearsValueChanged(_ sender: Any) {
        placedGearsLabel.text = "\(Int(placedGearsStepper.value))"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        newTeam?.highGoals = Int(highGoalsStepper.value)
        newTeam?.placedGears = Int(placedGearsStepper.value)
        print("set highGoals to \(Int(highGoalsStepper.value)) and placedGears to \(Int(placedGearsStepper.value))")
        if let t = newTeam {
            teams.append(t)
        }
        
    }
    
}

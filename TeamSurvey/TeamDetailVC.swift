
import UIKit

class TeamDetailVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var teamLogo: UIImageView!
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var teamNumber: UILabel!
    @IBOutlet weak var stars: UIImageView!
    @IBOutlet weak var hasAutoLabel: UILabel!
    @IBOutlet weak var positionFromBoilerLabel: UILabel!
    @IBOutlet weak var passedBreakLineLabel: UILabel!
    @IBOutlet weak var placedGearsLabel: UILabel!
    @IBOutlet weak var highGoalsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if selectedTeam != nil {
            teamLogo.image = selectedTeam!.image
            teamName.text = selectedTeam!.name
            teamNumber.text = "Team \(selectedTeam!.number)"
            stars.image = UIImage(named: selectedTeam!.rating)!
            if selectedTeam!.hasAuto {
                hasAutoLabel.text = "Autonomous: Yes"
            } else {
                hasAutoLabel.text = "Autonomous: No"
            }
            
            positionFromBoilerLabel.text = "Position from Boiler: \(selectedTeam!.positionFromBoiler)"
            
            if selectedTeam!.passedBreakLine {
                passedBreakLineLabel.text = "Passed Break Line: Yes"
            } else {
                passedBreakLineLabel.text = "Passed Break Line: No"
            }
            
            placedGearsLabel.text = "Placed Gears: \(selectedTeam!.placedGears)"
            highGoalsLabel.text = "High Goals: \(selectedTeam!.highGoals)"
        }
    }
    
    @IBAction func chooseImage(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let chosenImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            teamLogo.image = chosenImage
            selectedTeam?.image = chosenImage
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func star5Pressed(_ sender: Any) {
        stars.image = UIImage(named: "5Stars")
        selectedTeam?.rating = "5Stars"
    }
    
    @IBAction func star4Pressed(_ sender: Any) {
        stars.image = UIImage(named: "4Stars")
        selectedTeam?.rating = "4Stars"
    }
    
    @IBAction func star3Pressed(_ sender: Any) {
        stars.image = UIImage(named: "3Stars")
        selectedTeam?.rating = "3Stars"
    }
    
    @IBAction func star2Pressed(_ sender: Any) {
        stars.image = UIImage(named: "2Stars")
        selectedTeam?.rating = "2Stars"
    }
    
    @IBAction func star1Pressed(_ sender: Any) {
        stars.image = UIImage(named: "1Stars")
        selectedTeam?.rating = "1Stars"
    }

}

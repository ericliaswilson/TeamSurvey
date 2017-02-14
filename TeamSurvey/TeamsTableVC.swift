
import UIKit

class TeamsTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sharkAttack = Team(name: "Shark Attack",
                               number: 744,
                               rating: "5Stars",
                               image: UIImage(named: "744")!,
                               hasAuto: true,
                               positionFromBoiler: 3,
                               passedBreakLine: true,
                               highGoals: 7,
                               placedGears: 4)
        
        teams.append(sharkAttack)
        
        let ninjineers = Team(name: "Ninjineers", number: 2383, rating: "4Stars", image: UIImage(named: "2383")!, hasAuto: true, positionFromBoiler: 2, passedBreakLine: true, highGoals: 5, placedGears: 2)
        teams.append(ninjineers)
        let spam = Team(name: "SPAM", number: 180, rating: "3Stars", image: UIImage(named: "180")!, hasAuto: false, positionFromBoiler: 2, passedBreakLine: false, highGoals: 2, placedGears: 1)
        teams.append(spam)
        
        let background = UIImageView(image: UIImage(named: "FIRST-iphone")!)
        tableView.backgroundView = background
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = teams[indexPath.row].name
        cell.detailTextLabel?.text = "Team \(teams[indexPath.row].number)"
        cell.imageView?.image = teams[indexPath.row].image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedTeam = teams[indexPath.row]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    @IBAction func exitToTeamsTableVC(sender: UIStoryboardSegue) {
        // No code needed
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            teams.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }


}

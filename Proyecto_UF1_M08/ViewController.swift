import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var Table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

class  Game{
    let name: String
    let price: Double
}



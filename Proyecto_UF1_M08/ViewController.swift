import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var Table: UITableView!
    var gameArray = [Game]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    


}

class  Game{
    let name: String
    let price: Double
    let category: gameType
    init(name: String, price: Double, category: gameType) {
        self.name = name
        self.price = price
        self.category = category
    }
}

enum gameType: String {
    case buy = "comprar"
    case rent = "alquilar"
}






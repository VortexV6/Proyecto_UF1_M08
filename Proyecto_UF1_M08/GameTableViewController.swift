import UIKit

class GameTableViewController: UITableViewController{

    
    @IBOutlet weak var SearchBar: UISearchBar!
    var gameArray = [Game]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpGame()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    private func setUpGame(){
        gameArray.append(Game(name: "lol", price: 12.0, category: .buy, image: "1"))
        gameArray.append(Game(name: "wow", price: 10.0, category: .buy, image: "2"))
        gameArray.append(Game(name: "hytale", price: 8.0, category: .buy, image: "3"))
    }
 
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameArray.count
    }
    
    
    
    //************BOTONES LATERALES AL HACER SWIPE************
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let buy = UIContextualAction(style: .normal, title: "Comprar") { (action, view, nil) in
            print ("Comprar")
        }
        
        return UISwipeActionsConfiguration(actions: [buy])
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let rent = UIContextualAction(style: .normal, title: "Alquilar") { (action, view, nil) in
            print ("Alquilar")
        }
        return UISwipeActionsConfiguration(actions: [rent])
    }
    
    
    //************FIN DE BOTONES LATERALES AL HACER SWIPE************
    

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
     
        if let cellCustom = cell as? TableCell{
            cellCustom.nameLabel.text = gameArray[indexPath.row].name
            cellCustom.nameLabel2.text = gameArray[indexPath.row].name
            //cellCustom.nameImage.image = UIImage(named:gameArray[indexPath.row].image)
        }
            
        return cell
     }
        
        
    }

class  Game{
    let name: String
    let price: Double
    let image: String
    let category: gameType
    
    init(name: String, price: Double, category: gameType, image: String) {
        self.name = name
        self.price = price
        self.category = category
        self.image = image
    }
}

enum gameType: String {
    case buy = "comprar"
    case rent = "alquilar"
}






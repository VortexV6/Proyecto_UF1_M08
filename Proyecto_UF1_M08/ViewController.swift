import UIKit

class ViewController: UIViewController, UITableViewDataSource{

    
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var Table: UITableView!
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

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? TableCell else{
            return UITableViewCell()
        }
        cell.nameLabel.text = gameArray[indexPath.row].name
        cell.nameLabel2.text = gameArray[indexPath.row].name
        cell.nameImage.image = UIImage(named:gameArray[indexPath.row].image)
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






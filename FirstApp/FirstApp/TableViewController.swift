import UIKit


class TableViewController: UITableViewController {
    var townModels: [TownModel] = []
    var networkService: NetworkService = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        tableView .register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        networkService.getData { [weak self] towns in
            self?.townModels = towns
            
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        townModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        guard let cell = cell as? CustomTableViewCell else {
            return UITableViewCell()
        }
        let town = townModels[indexPath.row]
        cell.setCircleColor(lat: town.coords.lat, lon: town.coords.lon)
        cell.setTextForLabels(model: town)
        return cell
    }
}

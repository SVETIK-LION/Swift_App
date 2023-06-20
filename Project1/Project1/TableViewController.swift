import UIKit


class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewCell()
        cell.clickTableCell = tapCell
        return cell
    }
    
    private func tapCell() {
        navigationController?.pushViewController(CollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()), animated: true)
    }
    
}

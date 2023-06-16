import UIKit


class TableViewController: UITableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        CustomTableViewCell()
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .white
    }
    
}

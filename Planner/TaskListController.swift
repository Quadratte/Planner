
import UIKit

class TaskListController: UITableViewController {
    
    lazy var table: UITableView = {
        let table = UITableView()
        table.backgroundColor = .green
        table.frame = self.view.frame
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(table)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
    
}


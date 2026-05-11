
import UIKit

class TaskListController: UITableViewController {
    
    private var tmpData = ["Steve", "Tim", "Johny"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = self.view.frame
        tableView.register(TaskCell.self, forCellReuseIdentifier: TaskCell.id)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tmpData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TaskCell.id)
        cell?.textLabel?.text = tmpData[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Секция \(section + 1)"
    
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        35
    }
    
}


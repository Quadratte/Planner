
import UIKit

class TaskListController: UITableViewController {
    
    private var taskList: [Task] = [
        Task(name: "Steve", category: "Ceo"),
        Task(name: "Tim", category: "Ceo", priority: "high", date: Date.now),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = self.view.frame
        tableView.register(TaskListCell.self, forCellReuseIdentifier: TaskListCell.id)
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        tableView.delegate = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        taskList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TaskListCell.id) as? TaskListCell else {
            return UITableViewCell()
        }
        
        cell.nameLabel.text = taskList[indexPath.row].name
        cell.dateLabel.text = taskList[indexPath.row].date?.formatted(.dateTime)
        cell.categoryLabel.text = taskList[indexPath.row].category
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Секция \(section + 1)"
    
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        35
    }
    
}


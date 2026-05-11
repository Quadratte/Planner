
import UIKit

class Task {
    let name: String
    var category: String?
    var priority: String?
    var date: Date?
     
    init(name: String, category: String) {
        self.name = name
        self.category = category
    }
    
    init(name: String, category: String, priority: String, date: Date) {
        self.name = name
        self.category = category
        self.priority = priority
        self.date = date
    }
    
}



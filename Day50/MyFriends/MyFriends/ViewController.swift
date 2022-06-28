//
//  ViewController.swift
//  MyFriends
//
//  Created by Shaheem PP on 27/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.delegate=self
//        tableView.dataSource=self
    }
    
//    var hierarchicalData = [[String]]()
//    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return hierarchicalData.count
//    }
//    
//    override func tableView(_ tableView: UITableView,
//                            numberOfRowsInSection section: Int) -> Int {
//        return hierarchicalData[section].count
//    }
    
    
    
    
}



//extension ViewController : UITableViewDelegate{
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("Taped Me!")
//    }
//}
//extension ViewController : UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        return cell
//    }
//}

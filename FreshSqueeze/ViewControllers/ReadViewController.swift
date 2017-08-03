//
//  ReadViewController.swift
//  FreshSqueeze
//
//  Created by P Mara on 7/29/17.
//  Copyright © 2017 Phantasmic Apps. All rights reserved.
//

import UIKit

class ReadViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var person: Person!
    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
        print(person.desiredTask)
        print("hello")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
        
    

        // Do any additional setup after loading the view.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ReverseVC = segue.destination as? EntryViewController {
            ReverseVC.person = person
            
        }
}
}

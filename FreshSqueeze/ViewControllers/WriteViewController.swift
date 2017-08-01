//
//  WriteViewController.swift
//  FreshSqueeze
//
//  Created by P Mara on 7/29/17.
//  Copyright © 2017 Phantasmic Apps. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController {

    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.desiredTask)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ReverseVC = segue.destination as? EntryViewController {
            ReverseVC.person = person
        
    }
    

}
}

//
//  ViewController.swift
//  FreshSqueeze
//
//  Created by P Mara on 7/28/17.
//  Copyright © 2017 Phantasmic Apps. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        person = Person()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func readReviewTapped(_ sender: Any) {
        selectTask(task: "read")
        performSegue(withIdentifier: "reading", sender: self)
    }
    
    @IBAction func writeReviewTapped(_ sender: Any) {
        selectTask(task: "write")
        performSegue(withIdentifier: "writing", sender: self)
    }
    
    @IBAction func subscribeTapped(_ sender: Any) {
        selectTask(task: "subscriptions")
    }
    
    func selectTask(task: String) {
        person.desiredTask = task
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ReadVC = segue.destination as? ReadViewController {
            ReadVC.person = person
        }
        else if let WriteVC = segue.destination as? WriteViewController {
            WriteVC.person = person
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


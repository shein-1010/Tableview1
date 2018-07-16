//
//  ViewController.swift
//  tabelview
//
//  Created by Codemac-01i on 17/10/17.
//  Copyright © 2017 Codemac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var button: UIButton!
   var temp = String()
    
 let names = ["xx","yy","zz","11","22"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.label.text = names[indexPath.row]
        
        return cell
        
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         temp = (names[indexPath.row])
        performSegue(withIdentifier: "secondpage", sender: self)
    }

    @IBAction func segue(_ sender: UIButton) {
        
        performSegue(withIdentifier: "secondpage", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pass = segue.destination as! secondpage
        pass.intent = temp
    }
    
}


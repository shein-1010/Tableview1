//
//  secondpage.swift
//  tabelview
//
//  Created by sheikka on 23/10/17.
//  Copyright © 2017 Codemac. All rights reserved.
//

import UIKit

class secondpage: UIViewController {
var intent = String()
    
    @IBOutlet weak var newresult: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        newresult.text = intent
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
    
}

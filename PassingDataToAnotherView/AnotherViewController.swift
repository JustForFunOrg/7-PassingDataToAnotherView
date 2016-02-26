//
//  AnotherViewController.swift
//  PassingDataToAnotherView
//
//  Created by vmalikov on 2/26/16.
//  Copyright © 2016 justForFun. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var providedText : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = providedText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

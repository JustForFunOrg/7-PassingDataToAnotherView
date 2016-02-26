//
//  ViewController.swift
//  PassingDataToAnotherView
//
//  Created by vmalikov on 2/25/16.
//  Copyright © 2016 justForFun. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "showOtherViewController") {
            let anotherViewController = segue.destinationViewController as! AnotherViewController
            guard let text = textField.text else {
                anotherViewController.providedText = ""
                return
            }
            
            anotherViewController.providedText = text
        }
    }
}


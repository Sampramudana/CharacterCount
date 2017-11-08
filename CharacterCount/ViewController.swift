//
//  ViewController.swift
//  CharacterCount
//
//  Created by Becak Holic on 11/7/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtText: TextFieldWithCharacterCount?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //implement method
        txtText?.drhDelegate = self as! TextFieldWithCharacterCountDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension ViewController: TextFieldWithCharacterCountDelegate {
    func didEndEditing() {
        print("end Editing")
    }
    func didBeginEditing() {
        print("begin Editing")
    }
    func didReachCharacterLimit(_ reach: Bool) {
        if reach {
            print("limit reach")
        }else{
            print("have more chars to go")
        }
    }
}

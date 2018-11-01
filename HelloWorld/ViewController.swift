//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jeremy Robinson on 10/31/18.
//  Copyright © 2018 Jeremy Robinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK - Outlets
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    //MARK - Actions
    @IBAction func changeTextStringButton(_ sender: UIButton) {
        if(textFieldOutlet.text != ""){
        textLabel.text = textFieldOutlet.text
        textFieldOutlet.text = ""
        } else {
            textLabel.text = "Hello from Jeremy"
            textFieldOutlet.text = ""
        }
        view.endEditing(true)
    }
    
    @IBAction func changeViewColorButton(_ sender: UIButton) {
        if(view.backgroundColor == #colorLiteral(red: 0, green: 0.9803921569, blue: 0.5725490196, alpha: 1)) {
            view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        } else {
            view.backgroundColor = #colorLiteral(red: 0, green: 0.9803921569, blue: 0.5725490196, alpha: 1)
        }
    }
    
    @IBAction func changeTextColorButton(_ sender: UIButton) {
        if(textLabel.textColor == #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) {
            textLabel.textColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        } else {
            textLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    @IBAction func tappedMainView(_ sender: UITapGestureRecognizer) {
        textLabel.text = "Hello from Jeremy"
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9803921569, blue: 0.5725490196, alpha: 1)
        textLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textFieldOutlet.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


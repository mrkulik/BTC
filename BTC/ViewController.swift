//
//  ViewController.swift
//  BTC
//
//  Created by Gleb Kulik on 6/28/18.
//  Copyright © 2018 Sandpiper Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var btcValueLabel: UILabel!
    
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    let currencyType = ["EUR","USD","RUB"]
    
    override func viewDidLoad() {
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyType.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencyType[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
}


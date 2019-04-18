//
//  ViewController.swift
//  UIPickerViewTest03
//
//  Created by D7703_24 on 2019. 4. 18..
//  Copyright © 2019년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    var myColor = ["red", "blue", "black"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myColor.count
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
        outLabel.text = myColor[0]
    }

    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myColor[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        outLabel.text = myColor[row]
    }

}


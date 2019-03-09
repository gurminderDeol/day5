//
//  ViewController.swift
//  day5
//
//  Created by MacStudent on 2019-03-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    
    
    @IBOutlet weak var countryname: UILabel!
    @IBOutlet weak var countrynames: UIPickerView!
    
    let  country = ["India","Norway","Spain","Australia","England","New Zealand","Austria","Zimbabwe","Sri Lanka","Thailand"]
    let city = ["mumbai","delhi","surat","nagpur","ludhiana","jaipur","jodhpur","bathinda","rajpura"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.countrynames.delegate = self
        self.countrynames.dataSource = self        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func datepick(_ sender: UIDatePicker) {
        print(sender.date)
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0
        {
            return self.country.count
        }
        else
        {
            return self.city.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0
        {
        return self.country[row]
        }
        else
        {
            return self.city[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.countryname.text = self.country[row]
    }
    
}


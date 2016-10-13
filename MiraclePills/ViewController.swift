//
//  ViewController.swift
//  MiraclePills
//
//  Created by Brandon Byrne on 2016-10-11.
//  Copyright © 2016 ZeahSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var addressText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryText: UITextField!
    
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipText: UITextField!
    
    @IBOutlet weak var buyBtn: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var provinceLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var pillNameLabel: UILabel!
    @IBOutlet weak var pillPic: UIImageView!
    @IBOutlet weak var dividerline: UIView!
    
    
    
    @IBOutlet weak var successImg: UIImageView!
    
    
    
    
    let states = ["Alberta","British Columbia","Manitoba","New Brunswick","Newfoundland and Labrador","Nova Scotia","Ontario","Prince Edward Island","Quebec","Saskatchewan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipText.isHidden = true
        zipLabel.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryText.isHidden = false
        zipText.isHidden = false
        zipLabel.isHidden = false
        showBtn()
    }
    
    
    @IBAction func nameTxt(_ sender: AnyObject) {
        if(nameText.hasText)
        {
            showBtn()
        }
    }
    
    
    @IBAction func addressTxt(_ sender: AnyObject) {
        if(addressText.hasText)
        {
            showBtn()
        }
    }
    
    @IBAction func cityTxt(_ sender: AnyObject) {
        if(cityText.hasText)
        {
            showBtn()
        }
    }
    
    
    @IBAction func countryTxt(_ sender: AnyObject) {
        if(countryText.hasText)
        {
                showBtn()
        }
    }
    
    
    @IBAction func zipTxt(_ sender: AnyObject) {
        if(zipText.hasText)
        {
                showBtn()
        }
    }
    
    @IBAction func buyBtnPress(_ sender: AnyObject) {
        pillPic.isHidden = true
        pillNameLabel.isHidden = true
        moneyLabel.isHidden = true
        dividerline.isHidden = true
        nameLabel.isHidden = true
        nameText.isHidden = true
        streetLabel.isHidden = true
        addressText.isHidden = true
        cityLabel.isHidden = true
        cityText.isHidden = true
        provinceLabel.isHidden = true
        statePickerBtn.isHidden = true
        countryText.isHidden = true
        countryLabel.isHidden = true
        zipText.isHidden = true
        zipLabel.isHidden = true
        buyBtn.isHidden = true
        successImg.isHidden = false
   }
    
    
    func showBtn()
    {
        if(isComplete())
        {
            buyBtn.isHidden = false
        }
    }
    
    func isComplete() -> Bool {
        var complete = false
        
        if(countryText.hasText && nameText.hasText && cityText.hasText && addressText.hasText && zipText.hasText && (!(statePickerBtn.currentTitle?.contains("Choose"))!))
        {
            complete = true
        }
        
        return complete
    }
    
    
}



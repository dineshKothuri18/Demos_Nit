//
//  ViewController.swift
//  UIProject
//
//  Created by Kanna Dinesh on 7/26/22.
//

import UIKit

class ViewController: UIViewController {

    var nameTF : UITextField!
    var phoneTF : UITextField!
    var toggleSwitch : UISwitch!
    
    var submitBtn : UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTF = UITextField.init(frame: CGRect.init(x: 30, y: 100, width: 200, height: 50))
        nameTF.backgroundColor = .gray
        nameTF.textColor = .white
        nameTF.keyboardType = .default
        nameTF.delegate = self
        self.view.addSubview(nameTF)
        
        
        phoneTF = UITextField.init(frame: CGRect.init(x: 30, y: 200, width: 200, height: 50))
        phoneTF.backgroundColor = .gray
        phoneTF.textColor = .white
        phoneTF.keyboardType = .numberPad
        phoneTF.delegate = self
        self.view.addSubview(phoneTF)
        
        
        toggleSwitch = UISwitch.init(frame: CGRect.init(x: 30, y: 300, width: 200, height: 50))
        toggleSwitch.isOn = true
        toggleSwitch.addTarget(self, action: #selector(handleTextFields), for: .valueChanged)
        self.view.addSubview(toggleSwitch)
        
        
        submitBtn = UIButton.init(type: .system)
        submitBtn.frame = CGRect.init(x: 30, y: 400, width: 200, height: 50)
        submitBtn.backgroundColor = .white
        submitBtn.setTitle("Normal", for: .normal)
        submitBtn.setTitleColor(.white, for: .normal)
        
        submitBtn.setTitle("Hilighted", for: .highlighted)
        submitBtn.setTitleColor(.green, for: .highlighted)
        
        submitBtn.setTitle("Focused", for: .focused)
        submitBtn.setTitleColor(.cyan, for: .focused)
        
        submitBtn.setTitle("Selected", for: .selected)
        submitBtn.setTitleColor(.red, for: .selected)
        
        submitBtn.addTarget(self, action: #selector(buttonStates) , for: .touchUpInside)
        
//        submitBtn.setImage(UIImage.init(named: "img"), for: .normal)
        submitBtn.setBackgroundImage(UIImage.init(named: "img"), for: .normal)
        
        self.view.addSubview(submitBtn)
        
        
        
        
    }
    @objc func buttonStates(){
        
    }
    
    @objc func handleTextFields()  {
        if(toggleSwitch.isOn){
            nameTF.isHidden = false
            phoneTF.isHidden = false
        }else{
            nameTF.isHidden = true
            phoneTF.isHidden = true
        }
    }


}

extension ViewController : UITextFieldDelegate{
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if(textField == phoneTF){
            if(nameTF.text?.count ?? 0 <= 0){
                return false
            }else{
                return true
            }
        }
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if(string == "N"){
            return false
        }else{
            return true
        }
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
}

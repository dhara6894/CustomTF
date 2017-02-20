//
//  CustomTF.swift
//  CustomTextField
//
//  Created by dhara.patel on 15/02/17.
//  Copyright © 2017 SA. All rights reserved.
//

import UIKit
@IBDesignable class CustomTF: UITextField ,UITextFieldDelegate{

    @IBInspectable var spaceAfterCharacter: Int = 3
    @IBInspectable var maxLength: Int = 5
    private var count = 0
    private var checkLength = 0

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        delegate = self
        self.layer.borderWidth = 1.5
        self.clearButtonMode = .whileEditing
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    //Textfield delegate
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        count = 0
        checkLength = 0
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
       let totalLength = (textField.text?.characters.count)! - checkLength
            if totalLength == maxLength{
                return false
            }
        if count == spaceAfterCharacter {
           textField.text?.append(" ")
           count = 0
           checkLength += 1
        }
        count += 1
     return true
    }
    
}



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
    private var count = 0

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        delegate = self
        self.layer.borderWidth = 1.5
        self.clearButtonMode = .whileEditing
    }
    
//    Xcode's Interface Builder requires that you implement both or neither initializers for @IBDesignable classes to render properly in IB.
//    
//    If you implement required init(coder aDecoder: NSCoder) you'll need to override init(frame: CGRect) as well, otherwise "the agent will crash" as seen in the errors thrown by Xcode.
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    //Textfield delegate
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        count = 0
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if count == spaceAfterCharacter {
            textField.text?.append("-")
            count = 0
            }
            count += 1
     return true
    }

}



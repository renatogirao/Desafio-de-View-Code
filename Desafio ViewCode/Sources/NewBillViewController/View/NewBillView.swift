//
//  NewBillView.swift
//  Desafio ViewCode
//
//  Created by Renato Savoia Girão on 27/10/22.
//

import UIKit

class NewBillView: UIView {
    
    private lazy var myBalanceTextField: UITextField = {
        let myBalanceTextField = UITextField()
        myBalanceTextField.textColor = .black
        myBalanceTextField.font = UIFont.boldSystemFont(ofSize: 32)
        myBalanceTextField.borderStyle = .none
        myBalanceTextField.translatesAutoresizingMaskIntoConstraints = false
        myBalanceTextField.placeholder = "R$ 1.000,00"
        myBalanceTextField.textColor = UIColor(rgb: 0x5335A6F)
        return myBalanceTextField
    }()
}

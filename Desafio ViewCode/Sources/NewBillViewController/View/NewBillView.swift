//
//  NewBillView.swift
//  Desafio ViewCode
//
//  Created by Renato Savoia Girão on 27/10/22.
//

import UIKit

class NewBillView: UIView {
    
    private lazy var nameTextField: UITextField = {
        let nameTextField = UITextField()
        nameTextField.textColor = .black
        nameTextField.font = UIFont(name: "Roboto-Regular", size: 16)
        nameTextField.borderStyle = .none
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.placeholder = "Nome"
        nameTextField.textColor = UIColor(rgb: 0x94989B)
        return nameTextField
    }()
    
    private lazy var valueTextField: UITextField = {
        let valueTextField = UITextField()
        valueTextField.textColor = .black
        valueTextField.font = UIFont(name: "Roboto-Regular", size: 16)
        valueTextField.borderStyle = .none
        valueTextField.translatesAutoresizingMaskIntoConstraints = false
        valueTextField.placeholder = "Valor"
        valueTextField.textColor = UIColor(rgb: 0x94989B)
        return valueTextField
    }()
    
    init() {
        super.init(frame: .zero)
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addSubviews() {
        addSubview(valueTextField)
        addSubview(nameTextField)
    }
    
    private func addConstraints() {
        
        let contraints = [
            nameTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 32),
            nameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            nameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 16),
            
            valueTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 12),
            valueTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            valueTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 16),
        ]
        
        contraints.forEach { (item) in
            item.isActive = true
        }
    }
}

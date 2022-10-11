
//  IntroViewController.swift
//  Desafio ViewCode
//
//  Created by Renato Savoia Girão on 04/10/22.
//

import UIKit

final class IntroViewController: UIViewController {
    
    private lazy var myBalanceLabel: UILabel = {
        let label = UILabel()
        label.text = "Meu Saldo"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor(rgb: 0xA1A1A1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var whiteView: UIView = {
        let whiteView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 30))
        whiteView.backgroundColor = .white
        whiteView.layer.cornerRadius = 8
        whiteView.isHidden = false
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.layoutIfNeeded()
        return whiteView
    }()
    
    
    private lazy var myBalanceTextField: UITextField = {
        let myBalanceTextField = UITextField()
        myBalanceTextField.textColor = .black
        myBalanceTextField.font = UIFont.systemFont(ofSize: 32)
        myBalanceTextField.translatesAutoresizingMaskIntoConstraints = false
        myBalanceTextField.placeholder = "R$ 1.000,00"
        myBalanceTextField.textColor = UIColor(rgb: 0x5335A6F)
        return myBalanceTextField
    }()
    
    private lazy var blueLine: UIView = {
        let blueLine = UIView()
        blueLine.frame.size.height = 1
        blueLine.backgroundColor = .blue
        blueLine.translatesAutoresizingMaskIntoConstraints = false
        return blueLine
    }()
    
    private lazy var expenseButton: UIButton = {
        let addButton = UIButton()
        addButton.setTitle("+\nNOVA DESPESA", for: .normal)
        addButton.titleLabel?.font = .systemFont(ofSize: 10)
        addButton.backgroundColor = UIColor(rgb: 0xC24343)
        addButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        addButton.contentHorizontalAlignment = .center
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.layer.cornerRadius = 4
        return addButton
    }()
    
    private lazy var incomeButton: UIButton = {
        let incomeButton = UIButton()
        incomeButton.setTitle("+\nNOVA RECEITA", for: .normal)
        incomeButton.titleLabel?.font = .systemFont(ofSize: 10)
        incomeButton.backgroundColor = UIColor(rgb: 0x5AAD33)
        incomeButton.contentHorizontalAlignment = .center
        incomeButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        incomeButton.layer.cornerRadius = 4
        incomeButton.translatesAutoresizingMaskIntoConstraints = false
        return incomeButton
    }()
    
    private lazy var lastRefreshLabel: UILabel = {
        let label = UILabel()
        label.text = "Última atualização"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor(rgb: 0xA1A1A1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var budgetView: UIView = {
        let whiteView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 90))
        whiteView.backgroundColor = .white
        whiteView.layer.cornerRadius = 8
        whiteView.isHidden = false
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.layoutIfNeeded()
        return whiteView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraints()
    }
}

extension IntroViewController {
    
    private func addSubviews() {
        view.addSubview(whiteView)
        whiteView.addSubview(myBalanceLabel)
        whiteView.addSubview(myBalanceTextField)
        whiteView.addSubview(blueLine)
        view.addSubview(expenseButton)
        view.addSubview(incomeButton)
        view.addSubview(lastRefreshLabel)
    }

    private func addConstraints() {
        let contraints = [
            whiteView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            whiteView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 64),
            whiteView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            whiteView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -720),
            
            incomeButton.topAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: 12),
            incomeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            incomeButton.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -760),
     
            
            expenseButton.topAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: 12),
            expenseButton.leadingAnchor.constraint(equalTo: incomeButton.trailingAnchor, constant: 8),
            expenseButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            expenseButton.leadingAnchor.constraint(equalTo: view.centerXAnchor),
            expenseButton.heightAnchor.constraint(equalTo: incomeButton.heightAnchor),
            
            myBalanceLabel.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 12),
            myBalanceLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 19),
            
            myBalanceTextField.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor),
            myBalanceTextField.topAnchor.constraint(equalTo: myBalanceLabel.bottomAnchor, constant: 4),
            myBalanceTextField.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 19),
            myBalanceTextField.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -19),

            blueLine.topAnchor.constraint(equalTo: myBalanceTextField.bottomAnchor, constant: 4),
            blueLine.bottomAnchor.constraint(equalTo: myBalanceTextField.bottomAnchor, constant: 5),
            blueLine.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 19),
            blueLine.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -19),
            blueLine.centerYAnchor.constraint(equalTo: whiteView.centerYAnchor),
            blueLine.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor),
//
            lastRefreshLabel.topAnchor.constraint(equalTo: blueLine.bottomAnchor, constant: 4),
            lastRefreshLabel.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor),
            lastRefreshLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 19)
        ]
        
        contraints.forEach { (item) in
            item.isActive = true
        }
    }
}


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
        label.textColor = UIColor(rgb: 0xA2A2A2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var whiteView: UIView = {
        let whiteView = UIView()
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
        myBalanceTextField.font = UIFont.boldSystemFont(ofSize: 32)
        myBalanceTextField.borderStyle = .none
        myBalanceTextField.translatesAutoresizingMaskIntoConstraints = false
        myBalanceTextField.placeholder = "R$ 1.000,00"
        myBalanceTextField.textColor = UIColor(rgb: 0x5335A6F)
        return myBalanceTextField
    }()
    
    private lazy var lastRefreshLabel: UILabel = {
        let label = UILabel()
        label.text = "Última atualização"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor(rgb: 0xA2A2A2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var lastRefreshHourLabel: UILabel = {
        let label = UILabel()
        label.text = "09:41"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor(rgb: 0xA2A2A2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        addButton.setTitle("-\nNOVA DESPESA", for: .normal)
        addButton.titleLabel?.font = .boldSystemFont(ofSize: 12)
        addButton.titleLabel?.textAlignment = .center
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
        incomeButton.titleLabel?.font = .boldSystemFont(ofSize: 12)
        incomeButton.titleLabel?.textAlignment = .center
        incomeButton.backgroundColor = UIColor(rgb: 0x5AAD33)
        incomeButton.contentHorizontalAlignment = .center
        incomeButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        incomeButton.layer.cornerRadius = 4
        incomeButton.translatesAutoresizingMaskIntoConstraints = false
        return incomeButton
    }()
    
    private lazy var budgetView: UIView = {
        let whiteView = UIView()
        whiteView.backgroundColor = .white
        whiteView.layer.cornerRadius = 8
        whiteView.isHidden = false
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.layoutIfNeeded()
        return whiteView
    }()
    
    private lazy var budgetTitle: UILabel = {
        let label = UILabel()
        label.text = "Orçamento"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = UIColor(rgb: 0x1E1E1E)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var newCarLabel: UILabel = {
        let label = UILabel()
        label.text = "Novo carro"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor(rgb: 0x000000)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var newTVLabel: UILabel = {
        let label = UILabel()
        label.text = "TV"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor(rgb: 0x000000)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var vacationLabel: UILabel = {
        let label = UILabel()
        label.text = "Férias nas Maldivas"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor(rgb: 0x000000)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var plusLabel: UILabel = {
        let label = UILabel()
        label.text = "+"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textColor = UIColor(rgb: 0x979798)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var grayLine: UIView = {
        let blueLine = UIView()
        blueLine.frame.size.height = 4
        blueLine.backgroundColor = UIColor(rgb: 0xECECEC)
        blueLine.translatesAutoresizingMaskIntoConstraints = false
        return blueLine
    }()
    
    private lazy var suggestionView: UIView = {
        let suggestionView = UIView()
        suggestionView.backgroundColor = UIColor(red: 77/255.0, green: 92/255.0, blue: 228/255.0, alpha: 0.1)
        suggestionView.layer.cornerRadius = 8
        suggestionView.isHidden = false
        suggestionView.translatesAutoresizingMaskIntoConstraints = false
        suggestionView.layoutIfNeeded()
        return suggestionView
    }()
    
    private lazy var valueCarLabel : UILabel = {
        let label = UILabel()
        label.text = "R$ 2000,00"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = UIColor(rgb: 0xC24343)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layoutIfNeeded()
        return label
    }()
    
    private lazy var valueTVLabel : UILabel = {
        let label = UILabel()
        label.text = "R$ 3000,00"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = UIColor(rgb: 0xC24343)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layoutIfNeeded()
        return label
    }()
    
    private lazy var valueVacationLabel : UILabel = {
        let label = UILabel()
        label.text = "R$ 1,50"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = UIColor(rgb: 0xC24343)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layoutIfNeeded()
        return label
    }()
    
    private lazy var progressView1: UIView = {
        let progressView = UIView()
        progressView.frame.size.height = 3
        progressView.layer.cornerRadius = 4
        progressView.backgroundColor = UIColor(rgb: 0x4D5CE4)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var progressView2: UIView = {
        let progressView = UIView()
        progressView.frame.size.height = 3
        progressView.layer.cornerRadius = 8
        progressView.backgroundColor = UIColor(rgb: 0x4D5CE4)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var progressView3: UIView = {
        let progressView = UIView()
        progressView.frame.size.height = 6
        progressView.layer.cornerRadius = 8
        progressView.backgroundColor = UIColor(rgb: 0x4D5CE4)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var suggestionLabel : UILabel = {
        let label = UILabel()
        label.text = "Sugestão"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor(rgb: 0x4D5CE4)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layoutIfNeeded()
        return label
    }()
    
    private lazy var suggestionText: UILabel = {
        let label = UILabel()
        let suggestionText = "Crie seu orçamento para facilitar a visualização de suas metas"
        label.text = suggestionText
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = UIColor(rgb: 0x54565C)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layoutIfNeeded()
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Minhas Finanças"
        addSubviews()
        addConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.backgroundColor = .white
    }
}

extension IntroViewController {
    
    private func addSubviews() {
        view.addSubview(whiteView)
        whiteView.addSubview(myBalanceLabel)
        whiteView.addSubview(myBalanceTextField)
        whiteView.addSubview(blueLine)
        whiteView.addSubview(lastRefreshLabel)
        whiteView.addSubview(lastRefreshHourLabel)
        view.addSubview(expenseButton)
        view.addSubview(incomeButton)
        view.addSubview(lastRefreshLabel)
        view.addSubview(budgetView)
        budgetView.addSubview(budgetTitle)
        budgetView.addSubview(plusLabel)
        budgetView.addSubview(grayLine)
        budgetView.addSubview(valueCarLabel)
        budgetView.addSubview(valueTVLabel)
        budgetView.addSubview(valueVacationLabel)
        budgetView.addSubview(newCarLabel)
        budgetView.addSubview(newTVLabel)
        budgetView.addSubview(vacationLabel)
        budgetView.addSubview(progressView1)
        budgetView.addSubview(progressView2)
        budgetView.addSubview(progressView3)
        view.addSubview(suggestionView)
        suggestionView.addSubview(suggestionLabel)
        suggestionView.addSubview(suggestionText)
    }
    
    private func addConstraints() {
        let contraints = [
            
            whiteView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            whiteView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            whiteView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            whiteView.bottomAnchor.constraint(equalTo: lastRefreshLabel.bottomAnchor, constant: 12),
            
            
            incomeButton.topAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: 12),
            incomeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            incomeButton.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -770),
            
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
            
            lastRefreshLabel.topAnchor.constraint(equalTo: blueLine.bottomAnchor, constant: 4),
            lastRefreshLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 19),
            lastRefreshLabel.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: 12),
            
            lastRefreshHourLabel.centerYAnchor.constraint(equalTo: lastRefreshLabel.centerYAnchor),
            lastRefreshHourLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -19),
            
            budgetView.topAnchor.constraint(equalTo: expenseButton.bottomAnchor, constant: 12),
            budgetView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            budgetView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            budgetTitle.topAnchor.constraint(equalTo: budgetView.topAnchor, constant: 12),
            budgetTitle.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),

            plusLabel.centerYAnchor.constraint(equalTo: budgetTitle.centerYAnchor),
            plusLabel.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -21),
            plusLabel.topAnchor.constraint(equalTo: budgetView.topAnchor, constant: 12),
            
            grayLine.topAnchor.constraint(equalTo: budgetTitle.bottomAnchor, constant: 12),
            grayLine.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            grayLine.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -16),
            grayLine.bottomAnchor.constraint(equalTo: budgetTitle.bottomAnchor, constant: 13),
            
            newCarLabel.topAnchor.constraint(equalTo: grayLine.bottomAnchor, constant: 12),
            newCarLabel.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            
            progressView1.topAnchor.constraint(equalTo: newCarLabel.bottomAnchor, constant: 3),
            progressView1.bottomAnchor.constraint(equalTo: newCarLabel.bottomAnchor, constant: 9),
            progressView1.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            progressView1.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -29),
            
            valueCarLabel.topAnchor.constraint(equalTo: progressView1.bottomAnchor, constant: 4),
            valueCarLabel.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            
            
            
            
            
            suggestionView.topAnchor.constraint(equalTo: budgetView.bottomAnchor, constant: 36),
            suggestionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            suggestionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            suggestionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -86),
            
            suggestionLabel.centerXAnchor.constraint(equalTo: suggestionView.centerXAnchor),
            suggestionLabel.leadingAnchor.constraint(equalTo: suggestionView.leadingAnchor, constant: 12),
            suggestionLabel.trailingAnchor.constraint(equalTo: suggestionView.trailingAnchor, constant: -12),
            suggestionLabel.topAnchor.constraint(equalTo: suggestionView.topAnchor, constant: 22),

            suggestionText.leadingAnchor.constraint(equalTo: suggestionView.leadingAnchor, constant: 12),
            suggestionText.trailingAnchor.constraint(equalTo: suggestionView.trailingAnchor, constant: -12),
            suggestionText.centerXAnchor.constraint(equalTo: suggestionView.centerXAnchor),
            suggestionText.bottomAnchor.constraint(equalTo: suggestionView.bottomAnchor, constant: -22),
            suggestionText.topAnchor.constraint(equalTo: suggestionLabel.bottomAnchor, constant: 4)
            
            
        ]
        
        contraints.forEach { (item) in
            item.isActive = true
        }
    }
}

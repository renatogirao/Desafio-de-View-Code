//
//  IntroView.swift
//  Desafio ViewCode
//
//  Created by Renato Savoia Girão on 27/10/22.
//

import UIKit

class IntroView: UIView {
    
    private var introVC: IntroViewController?
    
    private lazy var myBalanceLabel: UILabel = {
        let label = UILabel()
        label.text = "Meu Saldo"
        label.font = UIFont(name: "Roboto Regular", size: 12)
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
        myBalanceTextField.font = UIFont(name: "Roboto Bold", size: 32)
        myBalanceTextField.borderStyle = .none
        myBalanceTextField.translatesAutoresizingMaskIntoConstraints = false
        myBalanceTextField.placeholder = "R$ 1.000,00"
        myBalanceTextField.textColor = UIColor(rgb: 0x5335A6F)
        return myBalanceTextField
    }()
    
    private lazy var lastRefreshLabel: UILabel = {
        let label = UILabel()
        label.text = "Última atualização"
        label.font = UIFont(name: "Roboto Regular", size: 12)
        label.textColor = UIColor(rgb: 0xA2A2A2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var lastRefreshHourLabel: UILabel = {
        let label = UILabel()
        label.text = "09:41"
        label.font = UIFont(name: "Roboto Regular", size: 12)
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
    
    lazy var expenseButton: UIButton = {
        let addButton = UIButton()
        addButton.addTarget(self, action: #selector(IntroViewController.goToNewBillScreen), for: .touchUpInside)
        addButton.setTitle("-\nNOVA DESPESA", for: .normal)
        addButton.titleLabel?.font = UIFont(name: "Roboto Bold", size: 12)
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
        incomeButton.titleLabel?.font = UIFont(name: "Roboto Bold", size: 12)
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
        label.font = UIFont(name: "Roboto Bold", size: 22)
        label.textColor = UIColor(rgb: 0x1E1E1E)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var newCarLabel: UILabel = {
        let label = UILabel()
        label.text = "Novo carro"
        label.font = UIFont(name: "Roboto Regular", size: 16)
        label.textColor = UIColor(rgb: 0x000000)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var newTVLabel: UILabel = {
        let label = UILabel()
        label.text = "TV"
        label.font = UIFont(name: "Roboto Regular", size: 12)
        label.textColor = UIColor(rgb: 0x000000)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var vacationLabel: UILabel = {
        let label = UILabel()
        label.text = "Férias nas Maldivas"
        label.font = UIFont(name: "Roboto Regular", size: 16)
        label.textColor = UIColor(rgb: 0x000000)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var plusLabel: UILabel = {
        let label = UILabel()
        label.text = "+"
        label.font = UIFont(name: "Roboto Bold", size: 24)
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
        label.font = UIFont(name: "Roboto Bold", size: 12)
        label.textColor = UIColor(rgb: 0xC24343)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layoutIfNeeded()
        return label
    }()
    
    private lazy var valueTVLabel : UILabel = {
        let label = UILabel()
        label.text = "R$ 3000,00"
        label.font = UIFont(name: "Roboto Bold", size: 12)
        label.textColor = UIColor(rgb: 0xC24343)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layoutIfNeeded()
        return label
    }()
    
    private lazy var valueVacationLabel : UILabel = {
        let label = UILabel()
        label.text = "R$ 1,50"
        label.font = UIFont(name: "Roboto Bold", size: 12)
        label.textColor = UIColor(rgb: 0xC24343)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layoutIfNeeded()
        return label
    }()
    
    private lazy var grayLineSeparator1: UIView = {
        let grayLineSeparator1 = UIView()
        grayLineSeparator1.frame.size.height = 4
        grayLineSeparator1.backgroundColor = UIColor(red: 77/255.0, green: 92/255.0, blue: 228/255.0, alpha: 0.1)
        grayLineSeparator1.translatesAutoresizingMaskIntoConstraints = false
        return grayLineSeparator1
    }()
    
    private lazy var grayLineSeparator2: UIView = {
        let grayLineSeparator = UIView()
        grayLineSeparator.frame.size.height = 4
        grayLineSeparator.backgroundColor = UIColor(red: 77/255.0, green: 92/255.0, blue: 228/255.0, alpha: 0.1)
        grayLineSeparator.translatesAutoresizingMaskIntoConstraints = false
        return grayLineSeparator
    }()
    
    private lazy var progressView1: UIView = {
        let progressView = UIView()
        progressView.frame.size.height = 6
        progressView.layer.cornerRadius = 3
        progressView.backgroundColor = UIColor(rgb: 0x4D5CE4)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var progressView2: UIView = {
        let progressView = UIView()
        progressView.frame.size.height = 6
        progressView.layer.cornerRadius = 3
        progressView.backgroundColor = UIColor(rgb: 0x4D5CE4)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var progressView3: UIView = {
        let progressView = UIView()
        progressView.frame.size.height = 6
        progressView.layer.cornerRadius = 3
        progressView.backgroundColor = UIColor(rgb: 0x4D5CE4)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var grayBackgroundProgress1: UIView = {
        let progressView = UIView()
        progressView.frame.size.height = 6
        progressView.layer.cornerRadius = 3
        progressView.backgroundColor = UIColor(rgb: 0xEFEFEF)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var grayBackgroundProgress2: UIView = {
        let progressView = UIView()
        progressView.frame.size.height = 6
        progressView.layer.cornerRadius = 3
        progressView.backgroundColor = UIColor(rgb: 0xEFEFEF)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var grayBackgroundProgress3: UIView = {
        let progressView = UIView()
        progressView.frame.size.height = 6
        progressView.layer.cornerRadius = 3
        progressView.backgroundColor = UIColor(rgb: 0xEFEFEF)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var suggestionLabel : UILabel = {
        let label = UILabel()
        label.text = "Sugestão"
        label.font = UIFont(name: "Roboto Bold", size: 18)
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
        label.font = UIFont(name: "Roboto Bold", size: 16)
        label.textColor = UIColor(rgb: 0x54565C)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layoutIfNeeded()
        return label
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
        addSubview(whiteView)
        whiteView.addSubview(myBalanceLabel)
        whiteView.addSubview(myBalanceTextField)
        whiteView.addSubview(blueLine)
        whiteView.addSubview(lastRefreshLabel)
        whiteView.addSubview(lastRefreshHourLabel)
        addSubview(expenseButton)
        addSubview(incomeButton)
        addSubview(lastRefreshLabel)
        addSubview(budgetView)
        budgetView.addSubview(grayBackgroundProgress1)
        budgetView.addSubview(grayBackgroundProgress2)
        budgetView.addSubview(grayBackgroundProgress3)
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
        budgetView.addSubview(grayLineSeparator1)
        budgetView.addSubview(grayLineSeparator2)
        addSubview(suggestionView)
        suggestionView.addSubview(suggestionLabel)
        suggestionView.addSubview(suggestionText)
    }
    
    private func addConstraints() {
        let contraints = [
            
            whiteView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            whiteView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12),
            whiteView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            whiteView.bottomAnchor.constraint(equalTo: lastRefreshLabel.bottomAnchor, constant: 12),
            
            incomeButton.topAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: 12),
            incomeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            incomeButton.heightAnchor.constraint(equalTo: self.heightAnchor, constant: -770),
            
            expenseButton.topAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: 12),
            expenseButton.leadingAnchor.constraint(equalTo: incomeButton.trailingAnchor, constant: 8),
            expenseButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            expenseButton.leadingAnchor.constraint(equalTo: self.centerXAnchor),
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
            budgetView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            budgetView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            budgetView.bottomAnchor.constraint(equalTo: valueVacationLabel.bottomAnchor, constant: 12),
            
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
            progressView1.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -200),
            
            grayBackgroundProgress1.centerYAnchor.constraint(equalTo: progressView1.centerYAnchor),
            grayBackgroundProgress1.topAnchor.constraint(equalTo: newCarLabel.bottomAnchor, constant: 3),
            grayBackgroundProgress1.bottomAnchor.constraint(equalTo: newCarLabel.bottomAnchor, constant: 9),
            grayBackgroundProgress1.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            grayBackgroundProgress1.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -16),
            
            valueCarLabel.topAnchor.constraint(equalTo: progressView1.topAnchor, constant: 8),
            valueCarLabel.bottomAnchor.constraint(equalTo: progressView1.topAnchor, constant: 22),
            valueCarLabel.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            
            grayLineSeparator1.topAnchor.constraint(equalTo: valueCarLabel.bottomAnchor, constant: 8),
            grayLineSeparator1.bottomAnchor.constraint(equalTo: valueCarLabel.bottomAnchor, constant: 9),
            grayLineSeparator1.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            grayLineSeparator1.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -16),
            
            newTVLabel.topAnchor.constraint(equalTo: grayLineSeparator1.bottomAnchor, constant: 8),
            newTVLabel.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            
            progressView2.topAnchor.constraint(equalTo: newTVLabel.bottomAnchor, constant: 3),
            progressView2.bottomAnchor.constraint(equalTo: newTVLabel.bottomAnchor, constant: 9),
            progressView2.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            progressView2.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -29),
            
            grayBackgroundProgress2.centerYAnchor.constraint(equalTo: progressView2.centerYAnchor),
            grayBackgroundProgress2.topAnchor.constraint(equalTo: newTVLabel.bottomAnchor, constant: 3),
            grayBackgroundProgress2.bottomAnchor.constraint(equalTo: newTVLabel.bottomAnchor, constant: 9),
            grayBackgroundProgress2.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            grayBackgroundProgress2.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -16),
            
            valueTVLabel.topAnchor.constraint(equalTo: progressView2.topAnchor, constant: 8),
            valueTVLabel.bottomAnchor.constraint(equalTo: progressView2.topAnchor, constant: 22),
            valueTVLabel.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            
            grayLineSeparator2.topAnchor.constraint(equalTo: valueTVLabel.bottomAnchor, constant: 8),
            grayLineSeparator2.bottomAnchor.constraint(equalTo: valueTVLabel.bottomAnchor, constant: 9),
            grayLineSeparator2.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            grayLineSeparator2.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -16),
            
            vacationLabel.topAnchor.constraint(equalTo: grayLineSeparator2.bottomAnchor, constant: 8),
            vacationLabel.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            
            progressView3.topAnchor.constraint(equalTo: vacationLabel.bottomAnchor, constant: 3),
            progressView3.bottomAnchor.constraint(equalTo: vacationLabel.bottomAnchor, constant: 9),
            progressView3.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            progressView3.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -315),
            
            grayBackgroundProgress3.centerYAnchor.constraint(equalTo: progressView3.centerYAnchor),
            grayBackgroundProgress3.topAnchor.constraint(equalTo: vacationLabel.bottomAnchor, constant: 3),
            grayBackgroundProgress3.bottomAnchor.constraint(equalTo: vacationLabel.bottomAnchor, constant: 9),
            grayBackgroundProgress3.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            grayBackgroundProgress3.trailingAnchor.constraint(equalTo: budgetView.trailingAnchor, constant: -16),
            
            valueVacationLabel.topAnchor.constraint(equalTo: progressView3.topAnchor, constant: 8),
            valueVacationLabel.bottomAnchor.constraint(equalTo: progressView3.topAnchor, constant: 22),
            valueVacationLabel.leadingAnchor.constraint(equalTo: budgetView.leadingAnchor, constant: 16),
            
            suggestionView.topAnchor.constraint(equalTo: budgetView.bottomAnchor, constant: 36),
            suggestionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            suggestionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            suggestionView.bottomAnchor.constraint(equalTo: suggestionText.bottomAnchor, constant: 22),
            
            suggestionLabel.leadingAnchor.constraint(equalTo: suggestionView.leadingAnchor, constant: 12),
            suggestionLabel.trailingAnchor.constraint(equalTo: suggestionView.trailingAnchor, constant: -12),
            suggestionLabel.topAnchor.constraint(equalTo: suggestionView.topAnchor, constant: 22),

            suggestionText.leadingAnchor.constraint(equalTo: suggestionView.leadingAnchor, constant: 12),
            suggestionText.trailingAnchor.constraint(equalTo: suggestionView.trailingAnchor, constant: -12),
            suggestionText.bottomAnchor.constraint(equalTo: suggestionView.bottomAnchor, constant: -22),
            suggestionText.topAnchor.constraint(equalTo: suggestionLabel.bottomAnchor, constant: 4)
        ]
        
        contraints.forEach { (item) in
            item.isActive = true
        }
    }
    
}


//  IntroViewController.swift
//  Desafio ViewCode
//
//  Created by Renato Savoia Girão on 04/10/22.
//

import UIKit

final class IntroViewController: UIViewController {
    
    private var introView: IntroView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Minhas Finanças"
        buildView()
    }
    
    private func buildView() {
        view = IntroView()
        introView = view as? IntroView
    }
    
    @objc func goToNewBillScreen(_ sender: UIButton!) {
        let newBillVC = NewBillViewController()
        navigationController?.pushViewController(newBillVC, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.backgroundColor = .white
    }
}


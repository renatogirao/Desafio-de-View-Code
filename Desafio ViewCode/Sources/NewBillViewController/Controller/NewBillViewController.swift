//
//  NewBillViewController.swift
//  Desafio ViewCode
//
//  Created by Renato Savoia Girão on 27/10/22.
//

import UIKit

class NewBillViewController: UIViewController {

    private var newBillView: NewBillView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Teste"
        buildView()
    }
    
    private func buildView() {
        view = NewBillView()
        newBillView = view as? NewBillView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.backgroundColor = .white
    }

}

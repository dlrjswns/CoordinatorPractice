//
//  FirstViewController.swift
//  CoordinatorPractice
//
//  Created by 이건준 on 2022/02/21.
//

import UIKit

class FirstViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.setTitle("Move VC", for: .normal)
        button.setTitleColor(.systemPink, for: .normal)
    }
    
    @objc func buttonTapped() {
        coordinator?.eventOccured(with: .buttonTapped)
    }
}

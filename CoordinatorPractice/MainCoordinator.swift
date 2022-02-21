//
//  MainCoordinator.swift
//  CoordinatorPractice
//
//  Created by 이건준 on 2022/02/21.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    let firstControllerFactory: () -> FirstViewController = {
        return .init()
    }
    
    let secondControllerFactory: () -> SecondViewController = {
        return .init()
    }
    
    func eventOccured(with type: Event) {
        switch type {
            case .buttonTapped:
                let nextVC = secondControllerFactory()
                navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
    func start() {
        let firstVC = firstControllerFactory()
        firstVC.coordinator = self
        navigationController?.setViewControllers([firstVC], animated: true)
    }
}

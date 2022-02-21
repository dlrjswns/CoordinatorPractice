//
//  Coordinator.swift
//  CoordinatorPractice
//
//  Created by 이건준 on 2022/02/21.
//

import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    
    func eventOccured(with type: Event)
    
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}

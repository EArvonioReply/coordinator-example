//
//  SecondCoordinator.swift
//

import UIKit

final class SecondCoordinator: NavigationCoordinator {
    
    // MARK: - NavigationCoordinator Properties
    
    let navigationController: UINavigationController
    var childrenCoordinators: [Coordinator] = []
    let viewController: UIViewController
    
    // MARK: - Init Method
    
    init() {
        let viewController = SecondViewController()
        self.navigationController = UINavigationController(rootViewController: viewController)
        self.viewController = self.navigationController
        
        viewController.coordinator = self
    }
    
    // MARK: - Coordinator Method
    
    func start() {}
}

// MARK: - SecondCoordinator Extensions

extension SecondCoordinator {
    func presentViewController() {
        let coordinator = BaseCoordinator(navigationController: navigationController)
        present(child: coordinator)
    }
}

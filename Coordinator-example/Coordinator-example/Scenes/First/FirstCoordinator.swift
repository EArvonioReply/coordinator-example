//
//  FirstCoordinator.swift
//

import UIKit

final class FirstCoordinator: NavigationCoordinator {
    
    // MARK: - NavigationCoordinator Properties
    
    let navigationController: UINavigationController
    var childrenCoordinators: [Coordinator] = []
    let viewController: UIViewController
    
    // MARK: - Init Method
    
    init() {
        let viewController = FirstViewController()
        self.navigationController = UINavigationController(rootViewController: viewController)
        self.viewController = self.navigationController
        
        viewController.delegate = self
    }
    
    // MARK: - Coordinator Method
    
    func start() {}
}

// MARK: - FirstViewControllerDelegate

extension FirstCoordinator: FirstViewControllerDelegate {
    func firstViewControllerDidPush(_ viewController: UIViewController) {
        let coordinator = BaseCoordinator(navigationController: navigationController)
        push(child: coordinator)
    }
}

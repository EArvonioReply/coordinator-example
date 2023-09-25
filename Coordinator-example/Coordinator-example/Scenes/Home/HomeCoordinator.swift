//
//  HomeCoordinator.swift
//

import UIKit

final class HomeCoordinator: NavigationCoordinator {
    
    // MARK: - NavigationCoordinator Properties
    
    let navigationController: UINavigationController
    var childrenCoordinators: [Coordinator] = []
    let viewController: UIViewController
    
    // MARK: - Init Method
    
    init() {
        let viewController = HomeViewController()
        self.navigationController = UINavigationController(rootViewController: viewController)
        self.viewController = self.navigationController
        
        viewController.actions = .init(pushViewController: pushViewController)
    }
    
    // MARK: - Coordinator Method
    
    func start() {}
}

// MARK: - HomeCoordinator Extension

extension HomeCoordinator {
    func pushViewController() {
        let coordinator = BaseCoordinator(navigationController: navigationController)
        push(child: coordinator)
    }
}

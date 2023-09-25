//
//  TabCoordinator.swift
//

import UIKit

protocol TabProvider {
    var tabController: UITabBarController { get }
    
    func addTab(coordinator: Coordinator, animated: Bool)
    func removeTab(coordinator: Coordinator)
}

extension TabProvider where Self: Coordinator {
    func addTab(coordinator: Coordinator, animated: Bool = false) {
        add(child: coordinator)
        var viewControllers = tabController.viewControllers ?? []
        viewControllers.append(coordinator.viewController)
        tabController.setViewControllers(viewControllers, animated: animated)
        coordinator.start()
    }
    
    func removeTab(coordinator: Coordinator) {
        remove(child: coordinator)
        if let index = tabController.viewControllers?.firstIndex(where: { $0 === coordinator.viewController }) {
            tabController.viewControllers?.remove(at: index)
        }
    }
}

typealias TabCoordinator = Coordinator & TabProvider

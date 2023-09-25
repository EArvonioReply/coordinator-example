//
//  AppRootCoordinator.swift
//


import UIKit


final class AppRootCoordinator: NSObject, AppCoordinator {
    
    // MARK: - AppCoordinator Properties
    
    let window: UIWindow
    var childrenCoordinators: [Coordinator] = []
    let viewController: UIViewController = UIViewController()
    
    // MARK: - Init Method
    
    init(with window: UIWindow) {
        self.window = window
    }
    
    // MARK: - Coordinator Method
    
    func start() {
        showScene()
    }
    
    // MARK: - Private Method
    
    private func showScene() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            let coordinator = TabBarCoordinator()
            self.switchTo(coordinator: coordinator)
        }
    }
}

//
//  TabBarCoordinator.swift
//

import UIKit

final class TabBarCoordinator: TabCoordinator {
    
    // MARK: - TabCoordinator Properties
    
    var tabController: UITabBarController
    var childrenCoordinators: [Coordinator] = []
    let viewController: UIViewController
    
    // MARK: - Init Method
    
    init() {
        tabController = TabBarViewController()
        viewController = tabController
        setupTabBarAppearance()
    }
    
    // MARK: - Coordinator Method
    
    func start() {
        addTabs()
    }
    
    // MARK: - Private Methods
    
    private func addTabs() {
        let homeCoordinator = HomeCoordinator()
        let homeTabBarItem = UITabBarItem(
                                title: "Home",
                                image: UIImage(systemName: "house"),
                                selectedImage: UIImage(systemName: "house.fill"))
        homeTabBarItem.tag = 0
        homeCoordinator.viewController.tabBarItem = homeTabBarItem
        addTab(coordinator: homeCoordinator)

        let firstCoordinator = FirstCoordinator()
        let firstTabBarItem = UITabBarItem(
                                    title: "First",
                                    image: UIImage(systemName: "1.circle"),
                                    selectedImage: UIImage(systemName: "1.circle.fill"))
        firstTabBarItem.tag = 1
        firstCoordinator.viewController.tabBarItem = firstTabBarItem
        addTab(coordinator: firstCoordinator)

        let secondCoordinator = SecondCoordinator()
        let secondTabBarItem = UITabBarItem(
                                    title: "Second",
                                    image: UIImage(systemName: "2.circle"),
                                    selectedImage: UIImage(systemName: "2.circle.fill"))
        secondTabBarItem.tag = 2
        secondCoordinator.viewController.tabBarItem = secondTabBarItem
        addTab(coordinator: secondCoordinator)
    }
    
    private func setupTabBarAppearance() {
        tabController.tabBar.backgroundColor = .white
        UITabBar.appearance().tintColor = .orange
        UITabBarItem.appearance().setTitleTextAttributes([
            .foregroundColor: UIColor.blue], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([
            .foregroundColor: UIColor.orange], for: .selected)
    }
}

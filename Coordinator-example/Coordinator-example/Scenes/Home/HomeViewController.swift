//
//  HomeViewController.swift
//

import UIKit

final class HomeViewController: UIViewController {
    
    // MARK: - Public Properties
    
    var actions: Actions?
    
    // MARK: - Init Method
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UIViewController Lifecycle Methods
    
    override func viewDidLoad() {
        addSubViews()
        view.backgroundColor = .red
    }
    
    // MARK: - Private Methods
    
    private func addSubViews() {
        let button = UIButton()
        button.setTitle("Push View Controller", for: .normal)
        button.addTarget(self, action: #selector(pushViewController), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc
    private func pushViewController() {
        actions?.pushViewController()
    }
}

// MARK: - Actions

extension HomeViewController {
    struct Actions {
        let pushViewController: VoidClosure
    }
}

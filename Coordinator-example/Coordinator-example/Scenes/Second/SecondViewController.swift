//
//  SecondViewController.swift
//

import UIKit

final class SecondViewController: UIViewController {
    
    // MARK: - Public Properties
    
    var coordinator: SecondCoordinator?
    
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
        view.backgroundColor = .yellow
    }
    
    // MARK: - Private Methods
    
    private func addSubViews() {
        let button = UIButton()
        button.setTitle("Present View Controller", for: .normal)
        button.setTitleColor(.red, for: .normal)
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
        coordinator?.presentViewController()
    }
}

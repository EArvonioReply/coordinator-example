//
//  FirstViewController.swift
//  

import UIKit

// MARK: - FirstViewControllerDelegate

protocol FirstViewControllerDelegate: AnyObject {
    func firstViewControllerDidPush(_ viewController: UIViewController)
}

final class FirstViewController: UIViewController {
    
    // MARK: - Public Properties
    
    weak var delegate: FirstViewControllerDelegate?
    
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
        view.backgroundColor = .green
    }
    
    // MARK: - Private Methods
    
    private func addSubViews() {
        let button = UIButton()
        button.setTitle("Push View Controller", for: .normal)
        button.setTitleColor(.blue, for: .normal)
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
        delegate?.firstViewControllerDidPush(self)
    }
}

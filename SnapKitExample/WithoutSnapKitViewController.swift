//
//  WithoutSnapKitViewController.swift
//  SnapKitExample
//
//  Created by Igor on 19.02.2022.
//

import UIKit

class WithoutSnapKitViewController: UIViewController {
    
    private lazy var someView: UIView = {
        let uiview = UIView()
        uiview.backgroundColor = .red
        return uiview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        title = "Without SnapKit"
        
        setupUIElements()
    }

    private func setupUIElements() {
        view.addSubview(someView)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        someView.translatesAutoresizingMaskIntoConstraints = false
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            someView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 80),
            someView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 80),
            someView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -80),
            someView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -10)
        ])
    }
}


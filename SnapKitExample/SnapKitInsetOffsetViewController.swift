//
//  SnapKitInsetOffsetViewController.swift
//  SnapKitExample
//
//  Created by Igor on 19.02.2022.
//

import UIKit
import SnapKit

class SnapKitInsetOffsetViewController: UIViewController {
    
    private lazy var greenBox: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGreen
        return view
    }()
    
    private lazy var redBox: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        return view
    }()
    
    private lazy var blueBox: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        return view
    }()
    
    private lazy var yellowBox: UIView = {
        let view = UIView()
        view.backgroundColor = .systemYellow
        return view
    }()
    
    private lazy var blackBox: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private lazy var grayBox: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var purpleBox: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPurple
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Inset / Offset"
        tabBarItem.image = UIImage(systemName: "gear")

        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(greenBox)
        greenBox.snp.makeConstraints { (make) in
           make.width.height.equalTo(50)
           make.center.equalTo(view)
        }

        // offset to green

        view.addSubview(redBox)
        redBox.snp.makeConstraints { (make) in
            make.width.height.equalTo(50)
            make.leading.equalTo(greenBox.snp.trailing).offset(20)
            make.top.equalTo(greenBox.snp.bottom)
        }

        // inset to green

        view.addSubview(blueBox)
        blueBox.snp.makeConstraints { (make) in
            make.width.height.equalTo(50)
            make.leading.equalTo(greenBox.snp.trailing).inset(20)
            make.top.equalTo(redBox.snp.bottom)
        }

        // offset black inside yellow

        view.addSubview(yellowBox)
        yellowBox.snp.makeConstraints { (make) in
            make.width.height.equalTo(50)
            make.leading.equalTo(greenBox.snp.trailing)
            make.top.equalTo(blueBox.snp.bottom)
        }

        yellowBox.addSubview(blackBox)
        blackBox.snp.makeConstraints { (make) in
            make.edges.equalTo(yellowBox).offset(10)
        }

        // inset purple inside gray

        view.addSubview(grayBox)
        grayBox.snp.makeConstraints { (make) in
            make.width.height.equalTo(50)
            make.leading.equalTo(greenBox.snp.trailing)
            make.top.equalTo(yellowBox.snp.bottom)
        }

        grayBox.addSubview(purpleBox)
        purpleBox.snp.makeConstraints { (make) in
            make.edges.equalTo(grayBox).inset(10)
        }
    }
}

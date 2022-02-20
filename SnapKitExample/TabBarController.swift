//
//  TabBarController.swift
//  SnapKitExample
//
//  Created by Igor on 20.02.2022.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
    }
    
    func setupTabBar() {
        let vc1 = createNavigationController(
            vc: WithoutSnapKitViewController(),
            itemName: "Without SnapKit"
        )
        let vc2 = createNavigationController(
            vc: SnapKitInsetOffsetViewController(),
            itemName: "Inset / Offset"
        )
        
        viewControllers = [vc1, vc2]
    }
    
    private func createNavigationController(vc: UIViewController, itemName: String) -> UIViewController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: "gear"), tag: 0)
        
        let vc = vc
        vc.tabBarItem = item
        
        return vc
    }
}

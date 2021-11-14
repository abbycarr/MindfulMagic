//
//  ViewController.swift
//  MindfulMagicNavigation
//
//  Created by Abby Carr on 11/14/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.addTarget(self,
                         action: #selector(didTapButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }
    
    @objc func didTapButton() {
        let tabBarVC = UITabBarController()
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        vc1.title = "Home"
        let vc2 = UINavigationController(rootViewController: SecondViewController())
        vc2.title = "Social Media Break"
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        vc3.title = "Raising Awareness"
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        vc4.title = "Resources"
        let vc5 = UINavigationController(rootViewController: FifthViewController())
        vc5.title = "Settings"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["house.fill", "brain", "megaphone", "bolt.heart.fill", "gearshape"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
    
    class SecondViewController: UIViewController {
        var listView: UIView = UIView.init()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let color = UIColor(hexString: "#d3bfa8")
            view.backgroundColor = color
            title = "Social Media Break"
        }
    }
    
    class ThirdViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            let color = UIColor(hexString: "#decfbe")
            view.backgroundColor = color
            title = "Raising Awareness"
        }
    }
    
    class FourthViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            let color = UIColor(hexString: "#e9dfd4")
            view.backgroundColor = color
            title = "Resources"
        }
    }
    
    class FifthViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            let color = UIColor(hexString: "#f4efe9")
            view.backgroundColor = color
            title = "Settings"
        }
    }
    
    class FirstViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            let color = UIColor(hexString: "#c8af93")
            view.backgroundColor = color
            title = "Home"
        }
    }
}


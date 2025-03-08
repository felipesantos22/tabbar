//
//  ThirdViewController.swift
//  tabBarView
//
//  Created by pekus on 17/02/25.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Third"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
    }
}

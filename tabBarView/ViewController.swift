//
//  ViewController.swift
//  tabBarView
//
//  Created by pekus on 17/02/25.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "iOS"
        
        // Configura o TabBar
        TabBar()
    }
    
    func TabBar(){
        // Criando os ViewControllers
        let firstViewController = FirstViewController()
        let secondViewController = SecondViewController()
        let thirdViewController = ThirdViewController()

        // Criando os UINavigationControllers para cada ViewController
        let firstNavController = UINavigationController(rootViewController: firstViewController)
        let secondNavController = UINavigationController(rootViewController: secondViewController)
        let thirdNavController = UINavigationController(rootViewController: thirdViewController)

        // Adicionando os ViewControllers ao TabBar
        self.viewControllers = [firstNavController, secondNavController, thirdNavController]
        
        // Definindo os itens de TabBar
        firstViewController.tabBarItem = UITabBarItem(
            title: "Primeira",
            image: UIImage(systemName: "star"), // Ícone do TabBar
            tag: 0
        )

        secondViewController.tabBarItem = UITabBarItem(
            title: "Segunda",
            image: UIImage(systemName: "heart"), // Ícone do TabBar
            tag: 1
        )
        
        thirdViewController.tabBarItem = UITabBarItem(
            title: "Terceira",
            image: UIImage(systemName: "star"), // Ícone do TabBar
            tag: 2
        )
        
        // Customizando a aparência do TabBar
        tabBar.tintColor = .systemRed // Cor do ícone ativo
        tabBar.isTranslucent = false  // Torna o TabBar opaco (não translúcido)
    }
}


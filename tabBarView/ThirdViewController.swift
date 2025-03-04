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
        
        view.backgroundColor = .gray
        
      
        // Setup da barra de navegação
        setupNavigationBar()
    }

    func setupNavigationBar() {
        self.title = "Swift"
        // Customizando a barra de navegação
        if let navigationController = self.navigationController {
            // Alterando cor de fundo da navbar
            navigationController.navigationBar.tintColor = .black
            // Tornando a navbar transparente
            navigationController.navigationBar.isTranslucent = false
            // Alterando cor de fundo da navbar
            navigationController.navigationBar.backgroundColor = .white
        }
        
        // Adicionando um botão de ação à direita da navbar
        let rightButton = UIBarButtonItem(title: "Ação", style: .plain, target: self, action: #selector(didTapRightButton))
        self.navigationItem.rightBarButtonItem = rightButton
        
        // Adicionando um botão de ação à esquerda da navbar
        let leftButton = UIBarButtonItem(title: "Voltar", style: .plain, target: self, action: #selector(didTapLeftButton))
        self.navigationItem.leftBarButtonItem = leftButton
    }
    
    // Ação para o botão da direita
    @objc func didTapRightButton() {
        print("Botão da direita pressionado")
    }
    
    // Ação para o botão da esquerda
    @objc func didTapLeftButton() {
        print("Botão da esquerda pressionado")
    }
}

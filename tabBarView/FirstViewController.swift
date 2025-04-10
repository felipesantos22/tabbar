//
//  FirstViewController.swift
//  tabBarView
//
//  Created by pekus on 17/02/25.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        // Customizando a barra de navegação
        if let navigationController = self.navigationController {
            navigationController.navigationBar.tintColor = .black
            // Alterando cor de fundo da navbar
            navigationController.navigationBar.backgroundColor = .white
            // Tornando a navbar transparente
            navigationController.navigationBar.isTranslucent = false
        }
        
        // Criando um UILabel personalizado para o título
        let titleLabel = UILabel()
        titleLabel.text = "Inicio"
        titleLabel.textColor = .black
        titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        self.navigationItem.titleView = titleLabel
        
        
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

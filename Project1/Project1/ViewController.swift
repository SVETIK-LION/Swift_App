//
//  ViewController.swift
//  Project1
//
//  Created by SVETIK on 13.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var logo: UIImageView = {
        let logoView = UIImageView()
        logoView.image = UIImage(named: "Uni.jpeg")
        return logoView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(logo)
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        logo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.5),
            logo.heightAnchor.constraint(equalToConstant: view.frame.size.width / 2.7),
            
        ])
    }


}


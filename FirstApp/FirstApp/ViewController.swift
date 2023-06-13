//
//  ViewController.swift
//  FirstApp
//
//  Created by SVETIK on 08.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var labelOne: UILabel = {
        let labelOne = UILabel()
        labelOne.text = "My first application!"
        labelOne.backgroundColor = .systemPink
        labelOne.textColor = .white
        labelOne.textAlignment = .center
        return labelOne
    }()
    
    var button = UIButton()
    var button1 = UIButton()
    var isTapped = false

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupButton()
        setupButton1()
        view.addSubview(labelOne)
        view.addSubview(button)
        view.addSubview(button1)
        setupConstraints()
    }
    
    private func setupConstraints() {
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelOne.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            labelOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelOne.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.5),
            labelOne.heightAnchor.constraint(equalToConstant: view.frame.size.height / 10),
            
            button.topAnchor.constraint(equalTo: labelOne.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            button1.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20),
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    private func setupButton() {
        button.setTitle("YAHOOOOOOO!!!!", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        button.setTitleColor(.systemPink, for: .highlighted)
        button.backgroundColor = .yellow
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }
    
    private func setupButton1() {
        button.setTitle("MEOW-MEOW!!!!", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        button.setTitleColor(.systemPink, for: .highlighted)
        button.backgroundColor = .yellow
        button.addTarget(self, action: #selector(tapButton1), for: .touchUpInside)
    }
    
    @objc func tapButton () {
        navigationController?.pushViewController(NextViewController(), animated: true)
    }
    
    
    @objc func tapButton1 () {
        isTapped.toggle()
        if isTapped {
            view.backgroundColor = .yellow
        } else {
            view.backgroundColor = .white
        }
    }
}

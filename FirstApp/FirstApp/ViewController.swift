//
//  ViewController.swift
//  FirstApp
//
//  Created by SVETIK on 08.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var labelOne: UILabel = {
        let labelOne = UILabel()
        labelOne.text = "My first application!"
        labelOne.backgroundColor = .systemPink
        labelOne.textColor = .white
        labelOne.textAlignment = .center
        return labelOne
    }()
    
    private var button = UIButton()
    private var button1 = UIButton()
    private var button2 = UIButton()
    private var button3 = UIButton()
    
//    private var networkService = NetworkService()
    
    private var isTapped = false

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupButton(button: &button, text: "Перейти на NextViewController")
        setupButton(button: &button1, text: "Изменить цвет")
        setupButton(button: &button2, text: "Перейти на TableViewController")
        setupButton(button: &button3, text: "Перейти на  CollectionViewController")
        
        addButtonTarget()
        
        view.addSubview(labelOne)
        view.addSubview(button)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        
        setupConstraints()
        
//        networkService.getData()
//        networkService.getError(errorCode: 404)
//        networkService.getNews()
//        networkService.getPlaces()
//        networkService.getMovies()
    }
    
    private func setupConstraints() {
        labelOne.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelOne.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            labelOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelOne.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.5),
            labelOne.heightAnchor.constraint(equalToConstant: view.frame.size.height / 10),
            
            button.topAnchor.constraint(equalTo: labelOne.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            button1.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 40),
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 40),
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button2.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 40),
            button3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button3.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button3.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    private func setupButton(button: inout UIButton, text: String) {
        button.setTitle(text, for: .normal)
        button.setTitleColor(.purple, for: .normal)
        button.setTitleColor(.systemPink, for: .highlighted)
        button.backgroundColor = .yellow
    }
    
    private func addButtonTarget() {
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        button1.addTarget(self, action: #selector(tapButton1), for: .touchUpInside)
        button2.addTarget(self, action: #selector(tapButton2), for: .touchUpInside)
        button3.addTarget(self, action: #selector(tapButton3), for: .touchUpInside)
    }
    
    
    @objc func tapButton() {
        navigationController?.pushViewController(NextViewController(), animated: true)
    }
    
    
    @objc func tapButton1() {
        isTapped.toggle()
        if isTapped {
            view.backgroundColor = .yellow
        } else {
            view.backgroundColor = .white
        }
    }
    
    @objc func tapButton2() {
        navigationController?.pushViewController(TableViewController(), animated: true)
    }
    
    @objc func tapButton3() {
        navigationController?.pushViewController(ColectionViewController(collectionViewLayout: UICollectionViewFlowLayout()), animated: true)
    }
    
}

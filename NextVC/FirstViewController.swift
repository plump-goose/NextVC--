//
//  FirstViewController.swift
//  NextVC
//
//  Created by 박경호 on 2022/09/19.
//

import UIKit

class FirstViewController: UIViewController {
    
    let mainLabel = UILabel()
    
    let backButton : UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        return button
        
    }()
    
    var someString : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
        autoLayout()
        
    }
    
    //MARK: - UI Setting
    func makeUI() {
        view.addSubview(mainLabel)
        view.addSubview(backButton)
        view.backgroundColor = .gray
        
        mainLabel.text = someString
        mainLabel.font = .systemFont(ofSize: 22)
        
        
        
    }
    
    //MARK: - 오토 레이아웃 설정하여 화면에 띄우기
    func autoLayout() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            backButton.widthAnchor.constraint(equalToConstant: 70),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -40),
            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc func backButtonTapped() {
        dismiss(animated: true, completion: nil)
        print("back버튼이 눌렸습니다.")
    }

}


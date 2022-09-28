//
//  SecondViewController.swift
//  NextVC
//
//  Created by Allen H on 2021/12/05.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    var someStrings : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        mainLabel.text = someStrings
        
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
}







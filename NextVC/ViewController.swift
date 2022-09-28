//
//  ViewController.swift
//  NextVC
//
//  Created by Allen H on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 1) 코드로 화면 이동 (다음화면이 코드로 작성되어있을때만 가능한 방법)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        
        firstVC.someString = "아기상어"
        // 만약 풀스크린으로 화면을 추가하고 싶다면
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil)
        
        
    }
    
    // 2) 코드로 스토리보드 객체를 생성해서, 화면 이동
    @IBAction func storyboardWithCodeButtonTapped(_ sender: UIButton) {
        // option 눌러서 확인해볼 것.
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        
        
        secondVC.someStrings = "아빠상어"
        /*
            객체 생성 시기가 달라 실행 X
            secondVC.mainLabel.text = "아빠상어"
         */
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true, completion: nil)
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    // 3) 스토리보드에서의 화면 이동(간접 세그웨이)
    @IBAction func storyboardWithSegueButtonTapped(_ sender: UIButton) {
        
        
        performSegue(withIdentifier: "toThirdVC", sender: self)
        
         
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toThirdVC" {
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.someString = "엄마상어"
        }
        
        if segue.identifier == "toFourthVC" {
            let fourthVC = segue.destination as! FourthViewController
            fourthVC.someString = "뚜루루뚜뚜"
        }
        
    }

    var num = 7
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if num > 5 {
            return false
        } else {
            return true
        }
    }
    
}


//
//  ViewController.swift
//  SampleBMICalculator
//
//  Created by 北田菜穂 on 2021/01/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    
    //ViewControllerの画面が開かれたら優先される処理を実行
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightTextField.placeholder = "身長を入力してください"
        weightTextField.placeholder = "体重を入力してください"
        
    }

    @IBAction func calcButtonAction(_ sender: Any) {
        
        //textにオプショナル型にする
        let doubleH = Double(heightTextField.text!)
        let doubleW = Double(weightTextField.text!)
        
        //ここでBMI計算の関数の結果がLabelに渡す
        bmiLabel.text = calculation(height: doubleH!, weight: doubleW!)
        
    }
    
    //BMIの計算式
    func calculation(height: Double, weight: Double) -> String {
        
        let h = height / 100
        let w = weight
        var result = w / (h * h)
        
        //合計数に少数第二まで切り上げ
        result = floor(result * 10) / 10
        
        //計算結果を関数の引数に返す
        return result.description
    }
    
}


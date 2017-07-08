//
//  ViewController.swift
//  Culclation
//
//  Created by 中尾涼 on 2017/07/08.
//  Copyright © 2017年 中尾涼. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var priceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // 次の画面オブジェクト
        let viewController = segue.destination as! PercentVIewControllerViewController
        
        // 金額をintに変換
        if let price = Int(priceField.text!){
            viewController.price = price
        }
    }

    @IBAction func tab1Button(_ sender: Any) {
        let value = priceField.text! + "1"
        if let price = Int(value){
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        priceField.text = "0"
    }
    
    // result画面から帰ってきたときの処理
    @IBAction func restart(_ segue: UIStoryboardSegue){
        priceField.text = "0"
    }
    
    

}

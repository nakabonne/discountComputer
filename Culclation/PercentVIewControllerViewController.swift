//
//  PercentVIewControllerViewController.swift
//  Culclation
//
//  Created by 中尾涼 on 2017/07/08.
//  Copyright © 2017年 中尾涼. All rights reserved.
//

import UIKit

class PercentVIewControllerViewController: UIViewController {
    
    var price: Int = 0
    
    @IBOutlet weak var percentFIeld: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tap1Button(_ sender: Any) {
        let value = percentFIeld.text! + "1"
        if let percent = Int(value){
            percentFIeld.text = "\(percent)"
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  HelloWorld
//
//  Created by 三浦亮太朗 on 2015/12/02.
//  Copyright © 2015年 ICU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func comeHome (suge: UIStoryboardSegue){
    }
    
    
    
    //計算に関するものどもが以下に続く
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var Answer: UILabel!
    @IBOutlet weak var people: UITextField!
    @IBOutlet weak var killpp: UITextField!
    
    let font4 = UIFont.systemFontOfSize(17)
    
    
    
    //とりあえず計算する関数でも作っておく
    func calc(num:Int, kill:Int) -> Int {
        var list = [Bool] (count: num, repeatedValue: false)
        
        if(num <= 0 || kill <= 0){
            return 0
        }
        
        var check = -1
        for (var a = 0; a < num; a++){
            for (var c = 0; c < kill; c++) {
                repeat {
                    check++
                    if (check >= num) {
                        check = check - num
                    }
                } while(list[check] == true)
            }
            list[check] = true
        }
        return check+1
    }
    
    //キーボードを引っ込める
    @IBAction func tapView(sender: AnyObject) {
        self.view.endEditing(true)
    }
    
    @IBAction func ClcBtn(sender: AnyObject) {
        let a = Int(people.text!)
        let b = Int(killpp.text!)
        var ans = 0
        if(a <= 0 || b <= 0 || a == nil || b == nil || a > 1000 || b > 1000){
            Answer.text = "1以上1000以下で入力せよ!"
            Answer.textColor = UIColor.redColor()
            Answer.font = UIFont.boldSystemFontOfSize(UIFont.labelFontSize())
            label1.text = ""
            label2.text = ""
        }else{
            ans = calc(a!, kill: b!)
            Answer.textColor = UIColor.blackColor()
            Answer.font = font4
            Answer.font = UIFont.systemFontOfSize(CGFloat(35))
            Answer.text = String(ans)
            label1.text = "生き残るなら..."
            label2.text = "番目！"
        }
    }
    
    //リセットボタン
    @IBAction func ResetBtn(sender: AnyObject) {
        Answer.textColor = UIColor.blackColor()
        Answer.font = UIFont.systemFontOfSize(UIFont.systemFontSize())
        Answer.font = font4

        Answer.text = "1以上1000以下で入力せよ"
        label1.text = ""
        label2.text = ""
        people.text = ""
        killpp.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
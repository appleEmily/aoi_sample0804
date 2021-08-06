//
//  ViewController.swift
//  foodmenu
//
//  Created by 桐生あおい新 on 2021/07/24.
//

import UIKit

class ViewController: UIViewController {
    
//    倉庫にアクセスするためにこの１行を忘れずに！
    var saveData: UserDefaults = UserDefaults.standard

    @IBOutlet var syusyokuLabel: UILabel!
    @IBOutlet var syusailabel: UILabel!
    @IBOutlet var hukusaiLabel: UILabel!
    @IBOutlet var shirumonolabel: UILabel!
    

    let syusyokuArray: [String] = ["ご飯","炊き込みご飯","うどん"]
    
//    ここだけ、最初の中身は空っぽにしておくよ！
//    後、中身が変わるので、letではなくvarにしてあげよう！
//    letは定数（変わらない。）　varは変数だったね！
    var syusaiArray: [String] = []
    let hukusaiArray: [String] = ["レタスサラダ","カボチャの煮物","きんぴらごぼう","青菜のおひたし","もやしのナムル","カプレーゼ"]
    let shirumonoArray: [String] = ["味噌汁","オニオンスープ","卵スープ","お吸い物"]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        主菜入力ページから画面が移ってきたときに、倉庫「saveData」に入っている内容を、空っぽのsyusaiArrayにセットします。
        
        syusaiArray = saveData.object(forKey: "shusai") as! [String]
    }

    
    @IBAction func change() {
       
        syusyokuLabel.text = syusyokuArray[index]
        syusailabel.text = syusaiArray[index]
        hukusaiLabel.text = hukusaiArray[index]
        shirumonolabel.text = shirumonoArray[index]
        
        index = index + 1
        
        if index > 3 {
            index = 0
        }
        
    }
    
    @IBAction func reset() {
        
        syusyokuLabel.text = "---"
        syusailabel.text = "---"
        hukusaiLabel.text = "---"
        shirumonolabel.text = "---"
        
        index = 0
    }
    
    @IBAction func random() {
        
        let syusyokuIndex = Int.random(in: 0...2)
        let syusaiIndex = Int.random(in: 0...3)
        let hukusaiIndex = Int.random(in: 0...5)
        let shirumonoIndex = Int.random(in: 0...3)
        
        print("主食:　/(syusyokuIndex)")
        print("主菜: /(syusaiIndex)")
        print("副菜: /(hukusaiIndex)")
        print("汁物: /(shirumonoIndex)")
        
        syusyokuLabel.text = syusyokuArray[syusyokuIndex]
        syusailabel.text = syusaiArray[syusaiIndex]
        hukusaiLabel.text = hukusaiArray[hukusaiIndex]
        shirumonolabel.text = shirumonoArray[shirumonoIndex]
    }
    
    
    
   


}


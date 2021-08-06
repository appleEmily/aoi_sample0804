//
//  FoodMenuViewController.swift
//  foodmenu
//
//  Created by 桐生あおい新 on 2021/07/31.
//

import UIKit

class FoodMenuViewController: UIViewController {
    
    //    配列を作ってあげて、配列ごと保存してあげよう！
    var shusaiArray:[String] = []
    
    //    userdefaultsを使って保存するための倉庫を作ります。そうこの名前がsavaData。
    var saveData: UserDefaults = UserDefaults.standard
    
    @IBOutlet var label: UILabel!
    @IBOutlet var titleTextField1: UITextField!
    @IBOutlet var titleTextFeild2: UITextField!
    @IBOutlet var titleTextField3: UITextField!
    @IBOutlet var titleTextField4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func saveFood() {
        //        textFeildに入力されたものを、配列に追加していくよ！
        //        配列に要素を追加するときのキーワードは「append」（アペンドと読みますね！）
        
        shusaiArray.append(titleTextField1.text!)
        shusaiArray.append(titleTextFeild2.text!)
        shusaiArray.append(titleTextField3.text!)
        shusaiArray.append(titleTextField4.text!)
        
        //上記のように、配列に4つの主食（テキストフィールドに入力されたもの）が追加できたら、配列を保存します。
        //最初に作った倉庫「saveData」にshusaiArrayを保存します。
        // 保存するときにはkeyを決めてあげるよ。
        
        saveData.set(shusaiArray, forKey: "shusai")
        
        //今回は、shusaiArrayという主食を入れた配列を、"shusai"という鍵で取り出せるようにしました
        //この後は、ViewControllerに戻るよ！
    }
}

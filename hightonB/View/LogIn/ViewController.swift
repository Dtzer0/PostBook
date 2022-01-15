//
//  ViewController.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userId: UITextField! //아이디
    
    @IBOutlet weak var userPw: UITextField! //비번
    
    @IBAction func logBtn(_ sender: Any) {
        //로그인성공 ( if문, 아닐경우 에러얼럿출력 )
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editSome()
    }

    func editSome() {
        userId.layer.borderWidth = 0.5
        userId.layer.borderColor = UIColor.blue.cgColor
        userId.layer.cornerRadius = 20
        
        userPw.layer.borderWidth = 0.5
        userPw.layer.borderColor = UIColor.blue.cgColor
        userPw.layer.cornerRadius = 20
        
    }
}


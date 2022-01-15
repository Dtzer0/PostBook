//
//  ProfileViewController.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/15.
//

import UIKit

class ProfileViewController: UIViewController {

    //로그아웃
    @IBAction func outBtn(_ sender: Any) {
        let outalram = UIAlertController(title: "로그아웃", message: "정말 로그아웃 하시겠습니까?", preferredStyle: .alert)
        
        let outact = UIAlertAction(title: "네", style: .destructive) { (action) in
            //다시 로그인페이지로
            guard let backVc = self.storyboard?.instantiateViewController(withIdentifier: "SigninVC") else { return }
            backVc.modalPresentationStyle = .fullScreen
            self.present(backVc, animated: true)
        }
        let leaveact = UIAlertAction(title: "아니오", style: .cancel) { (action) in
            //취소하고 다시 마이페이지로
        }
        
        outalram.addAction(outact)
        outalram.addAction(leaveact)
        
        present(outalram, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

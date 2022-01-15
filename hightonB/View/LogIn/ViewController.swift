//
//  ViewController.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/15.
//

import UIKit
import Moya
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var userId: UITextField! //아이디
    @IBOutlet weak var userPw: UITextField! //비번
    
    @IBAction func logBtn(_ sender: Any) {
        
        //하나라도 비어있으면 입력얼럿
        guard let idtext = userId.text, idtext.count > 0 else {
            let emptytxt = UIAlertController(title: "안내", message: "빈칸을 채워주세요 :(", preferredStyle: .alert)
            
            let backact = UIAlertAction(title: "네", style: .cancel) { (action) in
                
            }
            
            emptytxt.addAction(backact)
            present(emptytxt, animated: true, completion: nil)
            
            return
        }
        
        guard let pwtext = userPw.text, pwtext.count > 0 else {
            let emptytxt = UIAlertController(title: "안내", message: "빈칸을 채워주세요 :(", preferredStyle: .alert)
            
            let backact = UIAlertAction(title: "네", style: .cancel) { (action) in
                
            }
            
            emptytxt.addAction(backact)
            present(emptytxt, animated: true, completion: nil)
            
            return
        }
        
        //형식에 맞게 모두 채워졌다면 완료얼럿
        let truetxt = UIAlertController(title: "완료!", message: "로그인이 완료되었어요 :)", preferredStyle: .alert)
        
        let okact = UIAlertAction(title: "네", style: .cancel) { (action) in
            //Main으로 이동
            guard let goVc = self.storyboard?.instantiateViewController(withIdentifier: "MainVC") else { return }
            goVc.modalPresentationStyle = .fullScreen
            self.present(goVc, animated: true)
            
        }
        
        truetxt.addAction(okact)
        present(truetxt, animated: true, completion: nil)
        
        
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

//extension ViewController {
//
//    func setRequest() {
//
//        authProvider.request(.login("awdqqwd", "P@ssword")) { (result) in
//            switch result {
//            case let .success(let response):
//                do {
//                    let result = try? response.map(signData.self)
//                    print(result)
//                } catch(let err) {
//                    print(err.localizedDescription)
//                }
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//    }
//}

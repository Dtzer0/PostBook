//
//  AddViewController.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/15.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var bookName: UITextField!
    @IBOutlet weak var bookWriter: UITextField!
    @IBOutlet weak var bookPrice: UITextField!
    
    @IBAction func addBooks(_ sender: Any) {
        
        //하나라도 비어있으면 입력얼럿
        guard let ftext = bookName.text, ftext.count > 0 else {
            let emptytxt = UIAlertController(title: "안내", message: "빈칸을 채워주세요 :(", preferredStyle: .alert)
            
            let backact = UIAlertAction(title: "네", style: .cancel) { (action) in
                
            }
            
            emptytxt.addAction(backact)
            present(emptytxt, animated: true, completion: nil)
            
            return
        }
        guard let stext = bookWriter.text, stext.count > 0 else {
            let emptytxt = UIAlertController(title: "안내", message: "빈칸을 채워주세요 :(", preferredStyle: .alert)
            
            let backact = UIAlertAction(title: "네", style: .cancel) { (action) in
                
            }
            
            emptytxt.addAction(backact)
            present(emptytxt, animated: true, completion: nil)
            
            return
        }
        guard let ttext = bookPrice.text, ttext.count > 0 else {
            //단, 가격은 Int형으로 받아야하는데.. 일단 그것은 보류 ( 사용자의 장난이나 실수도 고려해야한다 )
            let emptytxt = UIAlertController(title: "안내", message: "빈칸을 채워주세요 :(", preferredStyle: .alert)
            
            let backact = UIAlertAction(title: "네", style: .cancel) { (action) in
                
            }
            
            emptytxt.addAction(backact)
            present(emptytxt, animated: true, completion: nil)
            
            return
        }
        
        //형식에 맞게 모두 채워졌다면 완료얼럿
        let fintxt = UIAlertController(title: "완료!", message: "등록이 완료되었습니다 :D", preferredStyle: .alert)
        
        let okact = UIAlertAction(title: "네", style: .cancel) { (action) in
            
        }
        
        fintxt.addAction(okact)
        present(fintxt, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSome()
    }
    
    func addSome() {
        bookName.layer.borderWidth = 0.5
        bookName.layer.borderColor = UIColor.blue.cgColor
        bookName.layer.cornerRadius = 20
        
        bookWriter.layer.borderWidth = 0.5
        bookWriter.layer.borderColor = UIColor.blue.cgColor
        bookWriter.layer.cornerRadius = 20
        
        bookPrice.layer.borderWidth = 0.5
        bookPrice.layer.borderColor = UIColor.blue.cgColor
        bookPrice.layer.cornerRadius = 20
    }
    
}

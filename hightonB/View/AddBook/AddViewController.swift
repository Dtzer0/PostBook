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
        //하나라도 비어있으면 입력얼럿, 아니라면 신청완료 얼럿 띄워주기
        
        //여기에서 신청한 북 데이터는 첫번째 페이지에 저장된다. ( 여기서 서버에 저장을 해서 그 데이터를 불러오는 건지는 모름 )
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

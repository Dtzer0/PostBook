//
//  AddViewController.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/15.
//

import UIKit
import Moya

class AddViewController: UIViewController {

    private let authProvider = MoyaProvider<bookInfo>()

    @IBOutlet weak var listTable: UITableView!
    
    @IBOutlet weak var bookNames: UITextField!
    @IBOutlet weak var bookWriter: UITextField!
    @IBOutlet weak var bookPrice: UITextField!
    @IBOutlet weak var userName: UITextField!
    
    @IBAction func addBooks(_ sender: Any) {
        
        //하나라도 비어있으면 입력얼럿
        guard let ftext = bookNames.text, ftext.count > 0 else {
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
        guard let utext = userName.text, utext.count > 0 else {
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
            //textfield에 있는 데이터 리셋 & 데이터를 서버로 보내기
            self.authProvider.request(.bookname) { (result) in
                switch result {
                case .success(let response) :
                    let result = try? response.map(pullBooks.self)
                    
                    self.listTable.reloadData()
                case .failure(let error) :
                    print(error)
                }
            }
        }
        
        fintxt.addAction(okact)
        present(fintxt, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSome()
        
        listTable.delegate = self
        listTable.dataSource = self
    }
    
    func addSome() {
        bookNames.layer.borderWidth = 0.5
        bookNames.layer.borderColor = UIColor.blue.cgColor
        bookNames.layer.cornerRadius = 20
        
        bookWriter.layer.borderWidth = 0.5
        bookWriter.layer.borderColor = UIColor.blue.cgColor
        bookWriter.layer.cornerRadius = 20
        
        bookPrice.layer.borderWidth = 0.5
        bookPrice.layer.borderColor = UIColor.blue.cgColor
        bookPrice.layer.cornerRadius = 20
        
        userName.layer.borderWidth = 0.5
        userName.layer.borderColor = UIColor.blue.cgColor
        userName.layer.cornerRadius = 20
    }
        
}

extension AddViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listTable.dequeueReusableCell(withIdentifier: "books", for : indexPath)
        cell.textLabel?.text = "asdaf"//책 제목
        cell.detailTextLabel?.text = "abc"//글쓴이
        return cell
    }
    
}

//extension AddViewController {
//    func Bookpost() {
//        let param = bookRequest.init(self.bookName.text!, self.bookWriter.text!, self.userName.text!)
//        print(param)
//
//        authProvider.request(.bookname(param: param)) { response in
//            switch response {
//                case .success(let result):
//                    do {
//                        _ = try? result.map(SignupModel.self)
//                    } catch(let err) {
//                        print(err.localizedDescription)
//                    }
//                    case .failure(let err):
//                            print(err.localizedDescription)
//                    }
//            }
//
//    }
//}

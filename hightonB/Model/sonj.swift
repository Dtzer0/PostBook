//
//  sonj.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/16.
//

import Foundation

//서버에 보낼 신청명부
struct addBooks : Encodable {
    let bookname : String //제목
    let creater : String //저자
    let publisher : String //신청자 이름
    //let price : Int //가격
}

//서버에서 가져올 것들
struct pullBooks : Decodable {
    let bookname : String //제목
    let creater : String //저자
}

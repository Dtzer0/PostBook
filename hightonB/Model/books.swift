//
//  books.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/15.
//

import Foundation
import Moya

struct GeneralAPIs {
    static let baseURL = "http://13.125.217.161:8080/"
}

struct bookRequest : Codable {
    var bookname : String
    var creator : String
    var publisher : String
    
    init(_ bookname : String, _ creator : String, _ publisher : String){
        self.bookname = bookname
        self.creator = creator
        self.publisher = publisher
    }
}

//서버에서 유저가 작성한 책 제목과 글쓴이를 불러오도록 해줌
enum bookInfo {
    case bookname
    case creator(param : bookRequest)
    case publisher(param : bookRequest)
}

extension bookInfo : TargetType {

    public var baseURL: URL { //서버의 도메인
        return URL(string: GeneralAPIs.baseURL)!
    }

    var path: String { //서버의 도메인 뒤에 추가될 path (API)
        switch self {
        case .bookname:
            return "/book/post"
        case .creator:
            return "/book/post"
        case .publisher:
            return "/book/post"
        }
    }

    var method: Moya.Method { //HTTP : 여기서는 POST 사용
        switch self {
        case .bookname, .creator, .publisher :
            return .post
        }
    }

    var task: Task { //리퀘에 사용되는 파라미터 설정
        switch self {
        case .bookname:
            return .requestPlain
        case .creator(let param):
            return .requestJSONEncodable(param)
        case .publisher(let param):
            return .requestJSONEncodable(param)
       
        }
    }

    var headers: [String : String]? { //모든 Target의 endpoint를 위한 HTTP header 반환
        switch self {
        default :
            return ["Content-Type" : "application/json"]
        }
    }
}

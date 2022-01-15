//
//  books.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/15.
//

import Foundation
import Moya

//struct GeneralAPIs {
//    static let baseURL = "https://{BASE_URL}/users/token"
//}
//
////서버에서 유저가 작성한 책 제목과 글쓴이를 불러오도록 해줌
//enum bookInfo {
//    case book(_ setid: String, _ setpw: String)
//}
//
//extension bookInfo : TargetType {
//
//    public var baseURL: URL { //서버의 도메인
//        return URL(string: GeneralAPIs.baseURL)!
//    }
//
//    var path: String { //서버의 도메인 뒤에 추가될 path (API)
//        switch self {
//        case .book:
//            return "/users/token"
//        }
//    }
//
//    var method: Moya.Method { //HTTP : 여기서는 POST 사용
//        switch self {
//        case .book:
//            return .post
//        }
//    }
//
//    var task: Task { //리퀘에 사용되는 파라미터 설정
//        switch self {
//        case .book(let setid, let setpw):
//            return .requestParameters(
//                parameters: [
//                    "setid" : setid,
//                    "setpw" : setpw
//                ],
//                encoding: JSONEncoding.prettyPrinted
//            )
//        }
//    }
//
//    var headers: [String : String]? { //모든 Target의 endpoint를 위한 HTTP header 반환
//        switch self {
//        case .book :
//            return ["Content-Type" : "application/json"]
//            //refresh token은 어디에..? ( -> 자동로그인이라는데.. 자세히 모르니 일단 패스 )
//        }
//    }
//}

//
//  log.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/15.
//

import Foundation
import Moya

//struct GeneralAPI {
//    static let baseURL = "https://{BASE_URL}/users/token"
//}
//
////데이터 네트워크의 형태를 열거형으로 정의 ( case를 어떤방식으로 정의해야하는가? -> 추상화! )
//enum usersInfo {
//    //account_id, password
//    case login(_ setid: String, _ setpw: String)
//}
//
////네트워크에 필요한 속성 제공
//extension usersInfo : TargetType {
//
//    public var baseURL: URL { //서버의 도메인
//        return URL(string: GeneralAPI.baseURL)!
//    }
//
//    var path: String { //서버의 도메인 뒤에 추가될 path (API)
//        switch self {
//        case .login:
//            return "/users/token"
//        }
//    }
//
//    var method: Moya.Method { //HTTP : 여기서는 POST 사용
//        switch self {
//        case .login:
//            return .post
//        }
//    }
//
//    var task: Task { //리퀘에 사용되는 파라미터 설정
//        switch self {
//        case .login(let setid, let setpw):
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
//        case .login :
//            return ["Content-Type" : "application/json"]
//            //refresh token은 어디에..? ( -> 자동로그인이라는데.. 자세히 모르니 일단 패스 )
//        }
//    }
//}
//
//struct signData : Codable {
//    var access_token : String //토큰
//    var expired_at : String //만료
//    var refresh_token : String //보류
//}

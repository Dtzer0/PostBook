//
//  Responses.swift
//  hightonB
//
//  Created by 홍태희 on 2022/01/16.
//

import Foundation

// MARK: - SignupModel
 struct SignupModel: Codable {
     let status: Int
     let success: Bool
     let message: String
     let data: SignupResponse
 }

 // MARK: - SignupResponse
 struct SignupResponse: Codable {
     let bookname, creator, publisher : String
     let price : Int
 }

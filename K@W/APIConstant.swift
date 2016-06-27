//
//  APIConstant.swift
//  PSI
//
//  Created by Anil on 2/26/16.
//  Copyright © 2016 Nurture Networks. All rights reserved.
//

import UIKit

enum APIType{
    case Login,DeviceRegister,VerifyInformation,UpdateUser,Logout
}

class APIConstant: NSObject {
    
    static let mockupUsername = ""
    static let mockupPassword = ""
    static let appID          = ""
    static let appSecret      = ""
    static let baseUrl:String = "https://ylhfkid3o2.execute-api.us-west-2.amazonaws.com/stage/"
    
    
    static func getAPIUrl(apiType:APIType)->String{
        switch (apiType){
            case .Login:
                return ""
            case .DeviceRegister:
                return ""
            case .VerifyInformation:
                return ""
            case .UpdateUser:
                return "saveprofile"
            case .Logout:
                return ""
            
        }
        

    }
    
}

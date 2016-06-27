//
//  APIServiceManager.swift
//  K@W
//
//  Created by Anil on 2/26/16.
//  Copyright © 2016 Nurture Networks. All rights reserved.
//

import Foundation
import UIKit

class APIServiceManager : NSObject {
 
    static func updateUserDetails(requestData:Dictionary<String,AnyObject>,completionBlock:(response:ResponseModel)->Void){
        let requestModel = RequestModel(apiUrl: APIConstant.getAPIUrl(.UpdateUser), parameters: requestData, headerDict: ["Content-Type":"application/json","Accept":"application/json","x-api-key":"taSGoSy2vZ9HP8bsEDQClIwu1vwIpas9tRlFcSx6"], httpMethodType: HTTPMethodType.POST, encoding: encodingType.JSON)
        
        APIUtils.fetchData(requestModel) { (response) -> Void in
            completionBlock(response: response)
        }
        
    }
    
}
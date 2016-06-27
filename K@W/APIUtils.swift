//
//  APIUtils.swift
//  PSI
//
//  Created by Anil on 2/26/16.
//  Copyright © 2016 Nurture Networks. All rights reserved.
//

import UIKit

import Alamofire

// class to call API and get the response

class APIUtils: NSObject {
    static func fetchData(requestModel:RequestModel,completionBlock:(response:ResponseModel)->Void){
        
        let url = "\(requestModel.baseUrl)\(requestModel.apiUrl)"
        
        Alamofire.request(APIUtils().getHTTPMethod(requestModel.httpMethodType), url, parameters: requestModel.parametersDict,headers:requestModel.headersDict,encoding:(APIUtils().getEncodingFormat(requestModel.encodeType))).responseJSON { (responseObj) -> Void in
           
            let responseModel = ResponseModel()
            responseModel.responseCode = responseObj.response?.statusCode
            
            switch responseObj.result {
                case .Success(let data):
                    responseModel.responseDictionary = data as! NSDictionary
                    responseModel.isSuccess = true
                    break
                
                case .Failure(let error):
                    
                    responseModel.isSuccess = false
                    
                    print("Request failed with error: \(error)")
                    break
            }
            
            completionBlock(response: responseModel)
        }
    }
    
    func getHTTPMethod(methodType:HTTPMethodType)->Alamofire.Method{
        switch(methodType){
            case .GET: return Alamofire.Method.GET
            case .POST: return Alamofire.Method.POST
            case .PUT: return Alamofire.Method.PUT
            case .PATCH: return Alamofire.Method.PATCH
            case .DELETE: return Alamofire.Method.DELETE
            
        }
    }
    
    
    func getEncodingFormat(methodType:encodingType)->Alamofire.ParameterEncoding{
        switch(methodType){
        case .URL: return Alamofire.ParameterEncoding.URL
        case .JSON: return Alamofire.ParameterEncoding.JSON
        case .URLEncodedInURL: return Alamofire.ParameterEncoding.URLEncodedInURL
            
        }
    }

}

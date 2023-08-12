//
//  CategoryRouter.swift
//  
//
//  Created by 홍성준 on 2023/08/12.
//

import Vapor

protocol CategoryRouter: AnyObject {
    
    func routes(using app: Application) throws
    
}

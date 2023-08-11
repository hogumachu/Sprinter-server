//
//  MissionRouter.swift
//  
//
//  Created by 홍성준 on 2023/08/11.
//

import Vapor

protocol MissionRouter: AnyObject {
    
    func routes(using app: Application) throws
    
}

//
//  ManagedObjectProtocol.swift
//  TestingViper
//
//  Created by admin on 30.01.2020.
//  Copyright © 2020 Rinat Kutuev. All rights reserved.
//

import Foundation
import CoreData

protocol ManagedObjectProtocol {
    associatedtype Entity
    func toEntity() -> Entity?
}

extension ManagedObjectProtocol where Self: NSManagedObject {
    
    static func getOrCreateNew(with id: Int, from context: NSManagedObjectContext) -> Self {
        return NSManagedObject(context: context) as! Self
    }
}

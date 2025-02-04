//
//  ManagedObjectConvertible.swift
//  TestingViper
//
//  Created by admin on 30.01.2020.
//  Copyright © 2020 Rinat Kutuev. All rights reserved.
//

import Foundation
import CoreData

protocol ManagedObjectConvertible {
    func toManagedObject(in context: NSManagedObjectContext, with type: Endpoints.Posts) -> NSManagedObject?
}

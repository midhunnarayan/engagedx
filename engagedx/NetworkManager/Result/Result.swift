//
//  Result.swift
//  ICABDriver
//
//  Created by IOSS on 07/08/19.
//  Copyright © 2019 IOSS. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(data:T)
    case failure(error : Error)
}

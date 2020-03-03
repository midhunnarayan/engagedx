//
//  CustomDelegate.swift
//  engagedx
//
//  Created by Midhun Narayan on 02/03/20.
//  Copyright © 2020 Midhun Narayan. All rights reserved.
//

import Foundation
public protocol ViewModelDelegate {
    func didStartFetchingData()
    func didFinishFetchingData<T: Decodable>(_ result: T?,message:String)
}

public protocol ViewModelDelegateWithApi {
    func didStartFetchingData(_ api: String)
    func didFinishFetchingData<T: Decodable>(_ api: String, _ result: T?, message: String)
}

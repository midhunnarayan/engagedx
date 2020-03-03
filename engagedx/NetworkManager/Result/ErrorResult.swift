//
//  ErrorResult.swift
//  ICABDriver
//
//  Created by IOSS on 07/08/19.
//  Copyright © 2019 IOSS. All rights reserved.
//

import Foundation

enum ErrorResult: Error,LocalizedError {
    case parseUrlFail
    case notFound
    case validationError
    case serverError
    case defaultError

    var errorDescription: String? {
        switch self {
        case .parseUrlFail:
            return "Cannot initial URL object."
        case .notFound:
            return "Not Found"
        case .validationError:
            return "Validation Errors"
        case .serverError:
            return "Internal Server Error"
        case .defaultError:
            return "Something went wrong."
        }
    }
}

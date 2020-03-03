//
//  File.swift
//  engagedx
//
//  Created by Midhun Narayan on 02/03/20.
//  Copyright © 2020 Midhun Narayan. All rights reserved.
//

import Foundation
struct K {
    struct ProductionServer {
        static let baseURL = "https://engagedxbv3.datasight.biz/api/"
        
    }
    struct CellIdentifires {
        static let profileCell  = "profile_cell"
        static let infoCell     = "info_cell"
        static let postCell     = "post_cell"
    }
    struct TitleNames {
        static let shortBio     = "Short bio"
        static let workInfo     = "Work Details"
        static let education    = "Education"
        static let certificate  = "Certificates"
        static let achivements  = "Achivements"
        static let skills       = "Skills"
    }
    struct ImageNames {
        static let workInfo     = "work_icon"
        static let education    = "graduate_icon"
        static let certificate  = "certficate_icon"
        static let achivements  = "achivement_icon"
        static let skills       = "skill_icon"
    }
}
enum HTTPHeaderField: String {
    case authentication     = "Authorization"
    case contentType        = "Content-Type"
    case acceptType         = "Accept"
    case acceptEncoding     = "Accept-Encoding"
    case string             = "String"
}

enum ContentType: String {
    case json       = "application/json"
    case urlEncode  = "application/x-www-form-urlencoded"
    case multipart  = "multipart/form-data"
}

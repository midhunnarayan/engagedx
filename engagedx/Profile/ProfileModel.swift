//
//  ProfileModel.swift
//  engagedx
//
//  Created by Midhun Narayan on 02/03/20.
//  Copyright © 2020 Midhun Narayan. All rights reserved.
//

import Foundation
// MARK: - Welcome
struct ProfileData: Codable {
    let isSuccess: Bool
    let message: String
    let responseData: ResponseData

    enum CodingKeys: String, CodingKey {
        case isSuccess = "IsSuccess"
        case message = "Message"
        case responseData = "ResponseData"
    }
}

// MARK: - ResponseData
struct ResponseData: Codable {
    let id: String
    let displayData: DisplayData
    let userDetails: UserDetails
    let userShortbio: UserShortbio
    let currentCompany: CurrentCompany
    let userEducationDetails: [UserEducationDetail]
    let userAchivements: [UserAchivement]
    let userCertificates: [UserCertificate]
    let userSkillDetails: [Skills?]?
    let workExperience: [WorkExperience]
    let userPosts: [UserPost]

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case displayData = "DisplayData"
        case userDetails = "UserDetails"
        case userShortbio = "UserShortbio"
        case currentCompany = "CurrentCompany"
        case userEducationDetails = "UserEducationDetails"
        case userAchivements = "UserAchivements"
        case userCertificates = "UserCertificates"
        case userSkillDetails = "UserSkillDetails"
        case workExperience = "WorkExperience"
        case userPosts = "UserPosts"
    }
}
struct Skills: Codable {
    let skill: String?
}

// MARK: - CurrentCompany
struct CurrentCompany: Codable {
    let companyID, departmentID, companyName: String
    let departmentName: String?
    let workEmail, jobLevel: String
    let designation, jobFunction: String?
    let licencingAuthority: Int
    let jobTitle, nationality: String
    let contactNo: String?
    let department: String

    enum CodingKeys: String, CodingKey {
        case companyID = "CompanyID"
        case departmentID = "DepartmentID"
        case companyName = "CompanyName"
        case departmentName = "DepartmentName"
        case workEmail = "WorkEmail"
        case jobLevel = "JobLevel"
        case designation = "Designation"
        case jobFunction = "JobFunction"
        case licencingAuthority = "LicencingAuthority"
        case jobTitle = "JobTitle"
        case nationality = "Nationality"
        case contactNo = "ContactNo"
        case department = "Department"
    }
}

// MARK: - DisplayData
struct DisplayData: Codable {
    let id, name, linkToProfile: String
    let profileImage, type, ownerID, detailsID: String?
    let facebook, twitter, linkedIn, instagram: String?
    let website, email, mobile: String?

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case name = "Name"
        case linkToProfile = "LinkToProfile"
        case profileImage = "ProfileImage"
        case type = "Type"
        case ownerID = "OwnerID"
        case detailsID = "DetailsID"
        case facebook = "Facebook"
        case twitter = "Twitter"
        case linkedIn = "LinkedIn"
        case instagram = "Instagram"
        case website = "Website"
        case email = "Email"
        case mobile = "Mobile"
    }
}

// MARK: - UserAchivement
struct UserAchivement: Codable {
    let id, userID, achivement: String

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case userID = "UserID"
        case achivement = "Achivement"
    }
}

// MARK: - UserCertificate
struct UserCertificate: Codable {
    let id, userID, fileName: String
    let documentFile: DocumentFile?
    let hasFileChage: Bool

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case userID = "UserID"
        case fileName = "FileName"
        case documentFile = "DocumentFile"
        case hasFileChage = "HasFileChage"
    }
}

// MARK: - DocumentFile
struct DocumentFile: Codable {
    let mediaType, media: String
    let documentFileExtension: String?
    let size: Int
    let id: String

    enum CodingKeys: String, CodingKey {
        case mediaType = "MediaType"
        case media = "Media"
        case documentFileExtension = "Extension"
        case size = "Size"
        case id = "ID"
    }
}

// MARK: - UserDetails
struct UserDetails: Codable {
    let userID, firstName: String
    let emiratesFirstName: String?
    let lastName: String
    let emiratesLastName: String?
    let nationality, country, mobile, email: String
    let permaLink: String?
    let dateofBirth: String
    let deviceID, userName, password, repeatPassword: String?
    let emiratesIDNo, emiratesUUID, sex: String?
    let createdOn: String
    let status, countryList: String?
    let overView: String
    let latitude, longitude: Double
    let location: String
    let linkedin: String
    let website: String
    let instagram, twitter, facebook: String
    let emirateID, countryOfResidence: String
    let isUAE, isUAEPass: Bool
    let emiratesUserType, emiratesGender, emiratesExpiryDate, arabicFirstName: String?
    let arabicLastName, arabicNationality: String?
    let employmenttype: String
    let primarycompany: String?
    let primarydesignation: String
    let firebaseID: String?

    enum CodingKeys: String, CodingKey {
        case userID = "UserID"
        case firstName = "FirstName"
        case emiratesFirstName = "EmiratesFirstName"
        case lastName = "LastName"
        case emiratesLastName = "EmiratesLastName"
        case nationality = "Nationality"
        case country = "Country"
        case mobile = "Mobile"
        case email = "Email"
        case permaLink = "PermaLink"
        case dateofBirth = "DateofBirth"
        case deviceID = "DeviceID"
        case userName = "UserName"
        case password = "Password"
        case repeatPassword = "RepeatPassword"
        case emiratesIDNo = "EmiratesIdNo"
        case emiratesUUID = "EmiratesUUID"
        case sex = "Sex"
        case createdOn = "CreatedOn"
        case status = "Status"
        case countryList = "CountryList"
        case overView = "OverView"
        case latitude = "Latitude"
        case longitude = "Longitude"
        case location = "Location"
        case linkedin = "Linkedin"
        case website = "Website"
        case instagram = "Instagram"
        case twitter = "Twitter"
        case facebook = "Facebook"
        case emirateID = "EmirateID"
        case countryOfResidence = "CountryOfResidence"
        case isUAE = "IsUAE"
        case isUAEPass = "IsUAEPass"
        case emiratesUserType = "EmiratesUserType"
        case emiratesGender, emiratesExpiryDate
        case arabicFirstName = "ArabicFirstName"
        case arabicLastName = "ArabicLastName"
        case arabicNationality = "ArabicNationality"
        case employmenttype, primarycompany, primarydesignation
        case firebaseID = "FirebaseID"
    }
}

// MARK: - UserEducationDetail
struct UserEducationDetail: Codable {
    let id, course, institution, startDate: String
    let endDate: String
    let mStartDate, mEndDate: String?
    let status: Status

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case course = "Course"
        case institution = "Institution"
        case startDate = "StartDate"
        case endDate = "EndDate"
        case mStartDate = "MStartDate"
        case mEndDate = "MEndDate"
        case status = "Status"
    }
}

enum Status: String, Codable {
    case a = "A         "
}

// MARK: - UserPost
struct UserPost: Codable {
    let id: String
    let containsMedia: Bool
    let mediaURL, mediaType, postText, mCreatedTime: String
    let createdTime, isEdited, contentType, timelineID: String
    let commentCount: Int
    let userReaction: String?
//    let reactionCount: [JSONAny]
    let title, startDate, endDate: String
    let attendeesCount: Int
    let rsvpDate, privacyStatus: String
    let sharedObj, contactPerson, contactMobile: String?
    let isEligibil: Bool
    let categoryID: String
    let isPaid: Bool
    let websiteLink, locationDescription, direction, categoryText: String?
    let imageArray: [DocumentFile]

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case containsMedia
        case mediaURL = "MediaUrl"
        case mediaType = "MediaType"
        case postText = "PostText"
        case mCreatedTime = "MCreatedTime"
        case createdTime = "CreatedTime"
        case isEdited = "IsEdited"
        case contentType = "ContentType"
        case timelineID = "TimelineId"
        case commentCount = "CommentCount"
        case userReaction = "UserReaction"
//        case reactionCount = "ReactionCount"
        case title = "Title"
        case startDate = "StartDate"
        case endDate = "EndDate"
        case attendeesCount = "AttendeesCount"
        case rsvpDate = "RSVPDate"
        case privacyStatus = "PrivacyStatus"
        case sharedObj = "SharedObj"
        case contactPerson = "ContactPerson"
        case contactMobile = "ContactMobile"
        case isEligibil = "IsEligibil"
        case categoryID = "CategoryID"
        case isPaid = "IsPaid"
        case websiteLink = "WebsiteLink"
        case locationDescription = "LocationDescription"
        case direction = "Direction"
        case categoryText = "CategoryText"
        case imageArray = "ImageArray"
    }
}

// MARK: - UserShortbio
struct UserShortbio: Codable {
    let id, userID, shortbio: String

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case userID = "UserID"
        case shortbio = "Shortbio"
    }
}

// MARK: - WorkExperience
struct WorkExperience: Codable {
    let id, userID, designation, companyName: String
    let startDate: String
    let endDate: String?
    let isCurrentCompany: Bool
    let status: String?
    let isAllowToEdit: String
    let country, countryName: String?
    let isPrimary: Bool?
    let licencingAuthority: Int
    let gvSector: String?
    let gvSectorID: String
    let discription, employmentType: String?

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case userID = "UserID"
        case designation = "Designation"
        case companyName = "CompanyName"
        case startDate = "StartDate"
        case endDate = "EndDate"
        case isCurrentCompany = "IsCurrentCompany"
        case status = "Status"
        case isAllowToEdit
        case country = "Country"
        case countryName = "CountryName"
        case isPrimary = "IsPrimary"
        case licencingAuthority = "LicencingAuthority"
        case gvSector = "GvSector"
        case gvSectorID = "GvSectorID"
        case discription = "Discription"
        case employmentType = "EmploymentType"
    }
}

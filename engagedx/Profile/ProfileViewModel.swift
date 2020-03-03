//
//  ProfileViewModel.swift
//  engagedx
//
//  Created by Midhun Narayan on 02/03/20.
//  Copyright © 2020 Midhun Narayan. All rights reserved.
//

import Foundation
class ProfileViewModel {
    var viewModelDelegate: ViewModelDelegate?
    
    init() {
        getUserData()
    }
    
    func getUserData(){
        viewModelDelegate?.didStartFetchingData()
        Network.shared.request(router: APIRouter.getUser) { (result: Result<ProfileData>) in
            switch result {
            case .success(let successData):
                print("successData \(successData)")
                self.viewModelDelegate?.didFinishFetchingData(successData,message: "Success")
            case .failure(let errorData):
                print("errorData \(errorData.localizedDescription)")
                self.viewModelDelegate?.didFinishFetchingData("nil", message: errorData.localizedDescription)
            }
        }
    }
}

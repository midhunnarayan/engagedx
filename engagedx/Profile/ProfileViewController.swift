//
//  ProfileViewController.swift
//  engagedx
//
//  Created by Midhun Narayan on 03/03/20.
//  Copyright © 2020 Midhun Narayan. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    var profileArray = [Any] ()
    var companyDetails : CurrentCompany?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewModel = ProfileViewModel()
        viewModel.viewModelDelegate = self
        
        tableView.estimatedRowHeight = 500
        tableView.rowHeight = UITableView.automaticDimension
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.activityStartAnimating(activityColor: UIColor.black, backgroundColor: #colorLiteral(red: 0.8942914605, green: 0.8937940001, blue: 0.9198349118, alpha: 1))
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
// MARK: - Table view data source

extension ProfileViewController: UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return profileArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let educationDetails = profileArray[section] as? [UserEducationDetail]{
            return educationDetails.count
        }else if let workData =  profileArray[section] as? [WorkExperience]{
            return workData.count
        }else if let userCertificate =  profileArray[section] as? [UserCertificate]{
            return userCertificate.count
        }else if let achivements =  profileArray[section] as? [UserAchivement]{
            return achivements.count
        }else if let skills =  profileArray[section] as? [Skills]{
            return skills.count
        }else if let post =  profileArray[section] as? [UserPost]{
            return post.count
        }
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let userdDetails = profileArray[indexPath.section] as? UserDetails{
            let cell = tableView.dequeueReusableCell(withIdentifier: K.CellIdentifires.profileCell, for: indexPath) as! ProfileTableViewCell
            cell.nameLabel.text = userdDetails.firstName
            if let companyDetails = companyDetails{
                cell.roleLabel.text = companyDetails.department
                cell.comapnyNameLabel.text = companyDetails.companyName
                cell.tagLineLabel.text = companyDetails.jobLevel
            }
            return cell
        }else if let postDetails = profileArray[indexPath.section] as? [UserPost]{
            let cell = tableView.dequeueReusableCell(withIdentifier: K.CellIdentifires.postCell, for: indexPath) as! UserPostTableViewCell
            cell.nameLabel.text = postDetails[indexPath.row].contentType
            cell.dateLabel.text = postDetails[indexPath.row].createdTime
            cell.titleLabel.text = postDetails[indexPath.row].title
            cell.timeLabel.text = postDetails[indexPath.row].startDate
            cell.attaendeesLabel.text = "Attendees : \(postDetails[indexPath.row].attendeesCount)"
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: K.CellIdentifires.infoCell, for: indexPath) as! InfoTableViewCell
            
            if let shortBio =  profileArray[indexPath.section] as? UserShortbio{
                cell.titleLabel.text = K.TitleNames.shortBio
                cell.detailsLabel.text = shortBio.shortbio
                cell.infoIcon.image = nil
            }else if let workData =  profileArray[indexPath.section] as? [WorkExperience]{
                cell.titleLabel.text = K.TitleNames.workInfo
                cell.detailsLabel.text = workData[indexPath.row].companyName
                cell.infoIcon.image = UIImage(named: K.ImageNames.workInfo)
            }else if let educationDetails = profileArray[indexPath.section] as? [UserEducationDetail]{
                cell.titleLabel.text = K.TitleNames.education
                cell.infoIcon.image = UIImage(named: K.ImageNames.education)
                cell.detailsLabel.text = educationDetails[indexPath.row].institution
            }else if let userCertificate = profileArray[indexPath.section] as? [UserCertificate]{
                cell.titleLabel.text = K.TitleNames.certificate
                cell.detailsLabel.text = userCertificate[indexPath.row].fileName
                cell.infoIcon.image = UIImage(named: K.ImageNames.certificate)
            }else if let achivements = profileArray[indexPath.section] as? [UserAchivement]{
                cell.titleLabel.text = K.TitleNames.achivements
                cell.detailsLabel.text = achivements[indexPath.row].achivement
                cell.infoIcon.image = UIImage(named: K.ImageNames.achivements)
            }else if let skills = profileArray[indexPath.section] as? [Skills]{
                cell.titleLabel.text = K.TitleNames.skills
                //                cell.detailsLabel.text = achivements[indexPath.row].achivement
                cell.infoIcon.image = UIImage(named: K.ImageNames.skills)
            }
            if indexPath.row == 0{
                cell.titleView.isHidden = false
            }else{
                cell.titleView.isHidden = true
            }
            return cell
        }
    }
}

//MARK:- APi response delegate

extension ProfileViewController: ViewModelDelegate {
    func didStartFetchingData() {
        
    }
    
    func didFinishFetchingData<T>(_ result: T?, message: String) where T : Decodable {
        self.view.activityStopAnimating()
        
        
        if let response = result as? ProfileData {
            print(response)
            let userData = response.responseData.userDetails
            let educationDetails = response.responseData.userEducationDetails
            let workDetails = response.responseData.workExperience
            let userCertificates = response.responseData.userCertificates
            let userAchivements = response.responseData.userAchivements
            self.companyDetails = response.responseData.currentCompany
            let shortBio = response.responseData.userShortbio
            let skills = response.responseData.userSkillDetails
            let post = response.responseData.userPosts
            profileArray.append(userData)
            profileArray.append(shortBio)
            profileArray.append(workDetails)
            profileArray.append(educationDetails)
            profileArray.append(skills as Any)
            profileArray.append(userCertificates)
            profileArray.append(userAchivements)
            profileArray.append(post)
            print(profileArray)
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }else {
            let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}

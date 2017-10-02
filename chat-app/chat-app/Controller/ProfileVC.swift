//
//  ProfileVC.swift
//  chat-app
//
//  Created by Admin on 02.10.17.
//  Copyright © 2017 metasemenov. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    
    //Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var userEmailLbl: UILabel!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logoutBtnPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    
    func setupView() {
        profileImg.image = UIImage(named: UserDataService.instance.avatarName)
        profileImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        userNameLbl.text = UserDataService.instance.name
        userEmailLbl.text = UserDataService.instance.email
        
        let closeTap = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap))
        bgView.addGestureRecognizer(closeTap)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}

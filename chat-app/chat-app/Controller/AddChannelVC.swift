//
//  AddChannelVC.swift
//  chat-app
//
//  Created by Admin on 02.10.17.
//  Copyright © 2017 metasemenov. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {

    //Outlets
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var chanDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var whiteBg: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
        guard let channelName = nameTxt.text , nameTxt.text != "" else { return }
        guard let channelDesc = chanDesc.text else { return }
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDesc) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    func setupView() {
        let closeTap = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        let closeKeyboard = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeKeyboard))
        bgView.addGestureRecognizer(closeTap)
        whiteBg.addGestureRecognizer(closeKeyboard)
        
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor: chatPurplePlaceholder])
        chanDesc.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor: chatPurplePlaceholder])
    }

    @objc func closeTap(_ recogniser: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func closeKeyboard() {
        view.endEditing(true)
    }
}

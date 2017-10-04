//
//  ChannelCell.swift
//  chat-app
//
//  Created by Admin on 02.10.17.
//  Copyright © 2017 metasemenov. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var channelNameLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
    }

    func configureCell(channel: Channel) {
        let title = channel.channelTitle ?? ""
        channelNameLbl.text = "#\(title)"
    }
}

//
//  TableViewCell.swift
//  GithubDemo
//
//  Created by Patchirajan, Karpaga Ganesh on 4/5/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class TableViewCell: UITableViewCell {

    //    var name: String?
//    var ownerHandle: String?
//    var ownerAvatarURL: String?
//    var stars: Int?
//    var forks: Int?
//    var repoDescription: String?
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var stars: UILabel!
    @IBOutlet weak var forks: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var cellDescription: UILabel!
    
    @IBOutlet weak var imageViewLabel: UIImageView!
    
    var repo: GithubRepo!{
        didSet{
            name.text = repo.name!;
            stars.text = String(describing: repo.stars!);
            forks.text = String(describing: repo.forks!);
            author.text = String(describing: repo.ownerHandle!);
            cellDescription.text = repo.repoDescription!;
            if let imageUrl = URL(string: repo.ownerAvatarURL!) {
                imageViewLabel.setImageWith(imageUrl)
            }
    
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

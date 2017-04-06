//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by Mhatre, Aniket on 4/5/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol SettingDelegate {
    func setStars(witStars stars: Int)
}

class SettingsViewController: UIViewController {
    
    let settingsDelegate: SettingDelegate! = nil //TODO: investigate Nill
    
    @IBOutlet weak var starLabelValue: UILabel!
    
    
    @IBAction func starSelector(_ sender: UISlider) {
        settingsDelegate.setStars(witStars: Int(sender.value))
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

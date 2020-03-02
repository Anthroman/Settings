//
//  SettingController.swift
//  Settings
//
//  Created by Anthroman on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import Foundation

class SettingController {
    
    //MARK: - Source of Truth
    
    static let settings: [Setting] = {
        let music = Setting(settingTitle: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(settingTitle: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(settingTitle: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: false)
        
        return [music, appStore, iBooks]
    }()
    
    //MARK: - Methods
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
}

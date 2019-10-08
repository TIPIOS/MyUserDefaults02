//
//  UserSettings.swift
//  MyUserDefaults02
//
//  Created by Luc Derosne on 05/10/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

import UIKit

struct UserSettings {
    static var id:String {
        get {
            return UserDefaults.standard.object(forKey: "ID") as? String ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "ID")
        }
    }
    static var pseudo:String {
        get {
            return UserDefaults.standard.object(forKey: "Pseudo") as? String ?? ""
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "Pseudo")
        }
    }
    static var vip:Bool {
        get {
            return UserDefaults.standard.object(forKey: "Vip") as? Bool ?? false
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "Vip")
        }
    }
    static var backColor:UIColor {
        get {
            return UserDefaults.standard.colorForKey(key:  "BackColor") ?? .blue
        }
        set {
            UserDefaults.standard.setColor(color: newValue, forKey: "BackColor")
        }
    }
}

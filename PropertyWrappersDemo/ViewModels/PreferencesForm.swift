//
//  PreferencesForm.swift
//  PropertyWrappersDemo
//
//  Created by Alfian Losari on 10/11/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import Foundation
import Combine

class PreferencesForm: ObservableObject {
    
    @Published var isCheatEnabled: Bool = UserPreferences.isCheatModeEnabled {
        didSet {
            UserPreferences.isCheatModeEnabled = self.isCheatEnabled
        }
    }
    
    @Published var highestScore: Int = UserPreferences.highestScore {
        didSet {
            UserPreferences.highestScore = self.highestScore
        }
    }
    
    @Published var nickname: String = UserPreferences.nickname {
        didSet {
            UserPreferences.nickname = self.nickname
        }
    }
}

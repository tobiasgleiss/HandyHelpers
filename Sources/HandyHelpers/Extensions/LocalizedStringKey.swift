//
//  LocalizedStringKey.swift
//  HandyHelpers
//
//  Created by Tobias Gleiss on 11.11.24.
//

import SwiftUI

public extension LocalizedStringKey {
    
    /// Returns a boolean value indicating if the `LocalizedStringKey` contains any character.
    var isEmpty: Bool { return self == "" }
    
}

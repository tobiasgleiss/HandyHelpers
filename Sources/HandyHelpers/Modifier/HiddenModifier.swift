//
//  HiddenModifier.swift
//  
//
//  Created by Tobias Gleiss on 21.10.24.
//

import SwiftUI

@available(iOS 17.0, *)
@available(macOS 14.0, *)
extension View {
    
    /// Hide or show the view based on a boolean value.
    /// - Parameters:
    ///   - isHidden: Boolean value indicating whether or not to hide the view
    ///   - andRemoved: Boolean value indicating whether or not to remove the view (view must also be hidden to be removed)
    /// - Returns: The given view shown or hidden/removed.
    @discardableResult func hidden(_ isHidden: Bool, andRemoved: Bool = false) -> some View {
        modifier(HiddenModifier(isHidden: isHidden, andRemoved: andRemoved))
    }
    
}

@available(iOS 17.0, *)
@available(macOS 14.0, *)
private struct HiddenModifier: ViewModifier {

    private let isHidden: Bool
    private let andRemoved: Bool

    init(isHidden: Bool, andRemoved: Bool = false) {
        self.isHidden = isHidden
        self.andRemoved = andRemoved
    }

    func body(content: Content) -> some View {
        Group {
            if isHidden {
                if andRemoved {
                    EmptyView()
                } else {
                    content
                        .hidden()
                        .accessibilityHidden(true)
                }
            } else {
                content
            }
        }
    }

}

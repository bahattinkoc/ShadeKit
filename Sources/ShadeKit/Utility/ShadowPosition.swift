//
//  ShadowPosition.swift
//  ShadeKit
//
//  Created by BAHATTIN KOC on 31.01.2025.
//

import SwiftUI

/// Defines the position of a “shadow” in relation to a view.
/// It allows you to place the shadow at specific edges or corners,
/// or use a custom CGSize offset.
public enum ShadowPosition {
    // Single-axis positions:

    /// Shadow above the view by `distance`
    case top(CGFloat)
    /// Shadow below the view by `distance`
    case bottom(CGFloat)
    /// Shadow to the left of the view by `distance`
    case left(CGFloat)
    /// Shadow to the right of the view by `distance`
    case right(CGFloat)

    // Corner positions (two values for x/y):

    /// Shadow at the top-left corner (offset by `dx` horizontally and `dy` vertically)
    case topLeft(CGFloat, CGFloat)
    /// Shadow at the top-right corner
    case topRight(CGFloat, CGFloat)
    /// Shadow at the bottom-left corner
    case bottomLeft(CGFloat, CGFloat)
    /// Shadow at the bottom-right corner
    case bottomRight(CGFloat, CGFloat)

    // Fully customizable offset:

    /// A custom CGSize offset
    case custom(CGSize)

    /// Returns the offset (as CGSize) for the shadow.
    public func offset() -> CGSize {
        switch self {
        case .top(let dist):
            return CGSize(width: 0, height: -dist)
        case .bottom(let dist):
            return CGSize(width: 0, height: dist)
        case .left(let dist):
            return CGSize(width: -dist, height: 0)
        case .right(let dist):
            return CGSize(width: dist, height: 0)

        case .topLeft(let dx, let dy):
            return CGSize(width: -dx, height: -dy)
        case .topRight(let dx, let dy):
            return CGSize(width: dx, height: -dy)
        case .bottomLeft(let dx, let dy):
            return CGSize(width: -dx, height: dy)
        case .bottomRight(let dx, let dy):
            return CGSize(width: dx, height: dy)

        case .custom(let size):
            return size
        }
    }
}

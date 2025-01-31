//
//  CGSize+Extension.swift
//  ShadeKit
//
//  Created by BAHATTIN KOC on 31.01.2025.
//

import Foundation

public extension CGSize {
    /// Multiplies the width and height by a given fraction.
    func multiplied(by fraction: CGFloat) -> CGSize {
        CGSize(width: width * fraction,
               height: height * fraction)
    }
}

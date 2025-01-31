//
//  View+Extension.swift
//  ShadeKit
//
//  Created by BAHATTIN KOC on 31.01.2025.
//

import SwiftUI

public extension View {

    /// Applies a solid shadow 3D effect using any custom `Shape`.
    /// The shadow shape will remain fixed behind the main content,
    /// while the main content moves toward it when pressed.
    ///
    /// - Parameters:
    ///   - shape: The shape used for both the shadow and the main content.
    ///   - position: Where the shadow is located (e.g., `.bottomRight(8, 8)`).
    ///   - pressFraction: The fraction of the shadow offset to move the content (0...1).
    ///   - fillColor: The color for the main shape.
    ///   - shadowColor: The color for the shadow shape.
    func westernEffect<ShadowShape: Shape>(
        shape: ShadowShape,
        position: ShadowPosition = .bottomRight(8, 8),
        pressFraction: CGFloat = 0.5,
        fillColor: Color = .blue,
        shadowColor: Color = .black
    ) -> some View {
        self.modifier(
            WesternEffectModifier(
                shape: shape,
                position: position,
                pressFraction: pressFraction,
                fillColor: fillColor,
                shadowColor: shadowColor
            )
        )
    }

    /// Applies a solid shadow 3D effect specifically with a RoundedRectangle.
    /// This is a convenience method to avoid manually specifying a shape.
    ///
    /// - Parameters:
    ///   - cornerRadius: The corner radius for the rounded rectangle.
    ///   - position: Where the shadow is located (e.g., `.bottomRight(8, 8)`).
    ///   - pressFraction: The fraction of the shadow offset to move the content (0...1).
    ///   - fillColor: The color for the main shape.
    ///   - shadowColor: The color for the shadow shape.
    func westernEffect(
        cornerRadius: CGFloat = 12,
        position: ShadowPosition = .bottomRight(8, 8),
        pressFraction: CGFloat = 0.5,
        fillColor: Color = .blue,
        shadowColor: Color = .black
    ) -> some View {
        self.modifier(
            WesternEffectModifier(
                shape: RoundedRectangle(cornerRadius: cornerRadius),
                position: position,
                pressFraction: pressFraction,
                fillColor: fillColor,
                shadowColor: shadowColor
            )
        )
    }
}

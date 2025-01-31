//
//  WesternEffectModifier.swift
//  ShadeKit
//
//  Created by BAHATTIN KOC on 31.01.2025.
//

import SwiftUI

/// A ViewModifier that creates a “western shadow” (an extra shape behind the main content)
/// and moves the main content toward that shadow when pressed, for a 3D-like effect.
public struct WesternEffectModifier<ShadowShape: Shape>: ViewModifier {
    @State private var isPressed: Bool = false

    /// The shape used for both the shadow and the main content.
    let shape: ShadowShape

    /// The position of the shadow (e.g., bottomRight(8, 8))
    let position: ShadowPosition

    /// The fraction of the shadow offset to move the main content when pressed (0...1).
    let pressFraction: CGFloat

    /// The color filling the main shape.
    let fillColor: Color

    /// The color for the shadow shape.
    let shadowColor: Color

    public func body(content: Content) -> some View {
        // Calculate the absolute offset for the shadow
        let shadowOffset = position.offset()

        // When pressed, the main content moves towards the shadow by `pressFraction`.
        let pressedOffset = shadowOffset.multiplied(by: pressFraction)

        ZStack {
            // 1) The “shadow” shape, behind the main content
            shape
                .fill(shadowColor)
                .offset(shadowOffset)

            // 2) The main content (shape + any child views)
            ZStack {
                shape.fill(fillColor)
                content
                    .padding()
            }
            .offset(isPressed ? pressedOffset : .zero)
            .animation(.easeInOut(duration: 0.1), value: isPressed)
        }
        // Use a DragGesture to detect presses (touch-down and lift)
        .gesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in
                    if !isPressed {
                        isPressed = true
                    }
                }
                .onEnded { _ in
                    isPressed = false
                }
        )
    }
}

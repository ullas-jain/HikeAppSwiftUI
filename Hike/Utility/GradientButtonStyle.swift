//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Jain Ullas on 9/12/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nil Coalescing
                // Condition? Pressed: Not Pressed
                configuration.isPressed ?
                    // When user pressed the button
                    LinearGradient(colors: [
                        Color.customGrayMedium,
                        Color.customGrayLight,
                    ], startPoint: .top, endPoint: .bottom)
                    :
                    // When the button is NOT pressed
                    LinearGradient(colors: [
                        Color.customGrayLight,
                        Color.customGrayMedium,
                    ], startPoint: .top, endPoint: .bottom)
            )

            .cornerRadius(40)
    }
}

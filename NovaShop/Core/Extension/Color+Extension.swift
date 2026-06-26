//
//  Color+Extension.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

extension Color {
    init(hex: String) {
        // Remove '#' if present and capitalize
        let cleanedHex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: "")
            .uppercased()
        
        var rgbValue: UInt64 = 0
        Scanner(string: cleanedHex).scanHexInt64(&rgbValue)
        
        let r, g, b, a: Double
        
        switch cleanedHex.count {
        case 6: // RGB (e.g., "FF5733")
            r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
            g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
            b = Double(rgbValue & 0x0000FF) / 255.0
            a = 1.0
        case 8: // RGBA (e.g., "FF5733FF")
            r = Double((rgbValue & 0xFF000000) >> 24) / 255.0
            g = Double((rgbValue & 0x00FF0000) >> 16) / 255.0
            b = Double((rgbValue & 0x0000FF00) >> 8) / 255.0
            a = Double(rgbValue & 0x000000FF) / 255.0
        default:
            // Fallback to clear color if format is invalid
            r = 0; g = 0; b = 0; a = 0
        }
        
        self.init(.sRGB, red: r, green: g, blue: b, opacity: a)
    }
}

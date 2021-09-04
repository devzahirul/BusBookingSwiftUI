//
//  Fonts.swift
//  BusBooking
//
//  Created by Islam Md. Zahirul on 4/9/21.
//

import SwiftUI

enum AppFontName: String {
    case bold = "Manrope-Bold"
    case extraBold = "Manrope-ExtraBold"
    case extraLight = "Manrope-ExtraLight"
    case light = "Manrope-Light"
    case medium = "Manrope-Medium"
    case regular = "Manrope-Regular"
    case semiBold = "Manrope-SemiBold"
    
    var name: String {
        return self.rawValue
    }
}

extension Font {
    static let appTitleBold34 = Font.bold(34.0)
    static let appTitleSemiBold24 = Font.semiBold(24.0)
    static let appBodyRegular18 = Font.regular(18.0)
    static let appBodySemiBold18 = Font.semiBold(18.0)
}


extension Font {
    static func bold(_ size: CGFloat) -> Font {
        return .custom(AppFontName.bold.name, size: size)
    }
    
    static func extraBold(_ size: CGFloat) -> Font {
        return .custom(AppFontName.extraBold.name, size: size)
    }
    
    static func extraLight(_ size: CGFloat) -> Font {
        return .custom(AppFontName.extraLight.name, size: size)
    }
    
    static func light(_ size: CGFloat) -> Font {
        
        return .custom(AppFontName.light.name, size: size)
    }
    
    static func medium(_ size: CGFloat) -> Font {
        return .custom(AppFontName.medium.name, size: size)
    }
    
    static func regular(_ size: CGFloat) -> Font {
        return .custom(AppFontName.regular.name, size: size)
    }
    
    static func semiBold(_ size: CGFloat) -> Font {
        return .custom(AppFontName.semiBold.name, size: size)
    }
}

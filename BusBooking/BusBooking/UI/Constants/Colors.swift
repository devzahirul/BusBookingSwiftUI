//
//  Colors.swift
//  BusBooking
//
//  Created by Islam Md. Zahirul on 4/9/21.
//

import SwiftUI

enum AppColor: String {
    case bGray
    case bGraySecondary
    case bGrayPrimary
    case bGreen
    case bGreenSecondary
    case bGreenPrimary
    case orng
}


extension Color {
    init(_ appColor: AppColor) {
        self.init(appColor.rawValue)
    }
}


//
//  BBookingButonView.swift
//  BusBooking
//
//  Created by Islam Md. Zahirul on 4/9/21.
//

import SwiftUI

struct BBookingButtonView: View {
    let title: String
    let action: () -> Void
    var backgroundColor: Color = Color(.bGreen)
    var titleColor: Color = .white
    var addStroke = false
    //MARK: - UI
    var body: some View {
        Button(action: action, label: {
            HStack {
                Text(title)
                    .foregroundColor(Color.white)
                    .font(.appBodySemiBold18)
            }
            .frame(width: 316, height: 56, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .strokeBorder(addStroke == true ? Color.white : Color.clear, lineWidth: addStroke == true ? 2.0 : 0.0)
            )
        })
    }
}

struct BBookingButonView_Previews: PreviewProvider {
    static var previews: some View {
        BBookingButtonView(title: "Sign in", action: {
            
        })
    }
}

//
//  ContentView.swift
//  BusBooking
//
//  Created by Islam Md. Zahirul on 4/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack(alignment: .leading) {
            Spacer()
            HStack {
                Spacer()
            Image(AppImage.appLogo.rawValue)
                .scaledToFit()
                .padding(.bottom, 200)
                Spacer()
            }
        Text("Get Started")
            .font(.appBodyRegular18)
            .foregroundColor(.white)
        Text("Millions of people use to turn their ideas")
            .font(.appTitleBold34)
            .foregroundColor(.white)
            HStack {
                Spacer()
                VStack {
            BBookingButtonView(title: "Sign in", action: {
             //action
            })
            .padding(.bottom)
            
            BBookingButtonView(title: "Create a new account", action: {
                //ActionC
            }, backgroundColor: .clear, addStroke: true)
                }
                Spacer()
            }.padding(.top)
            
        }
        .padding(.horizontal)
        .padding(.bottom, 156)
        .background(
            ZStack(alignment: .topLeading) {
                Image(AppImage.backgroundCarImage.rawValue)
                    .resizable()
                    
                Image(AppImage.background.rawValue)
                    .resizable()
                    .scaledToFill()
                Image(AppImage.gradianOverlay.rawValue)
                    .resizable()
                    .scaledToFill()
            }
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

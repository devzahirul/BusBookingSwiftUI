//
//  SignupSuccessView.swift
//  BusBooking
//
//  Created by Islam Md. Zahirul on 4/9/21.
//

import SwiftUI




struct AuthStatusView: View {
    
    let icon: String
    let successTitle: String
    let successMessage: String
    let action: () -> Void
    let successColor: Color
    let backgroundImage: String
    let buttonTitle: String
    
    var body: some View {
       
        VStack {
            VStack {
                HStack{
                    Spacer()
                }
                VStack {
                Image(icon)
                    .padding(.top, 100)
                    Text(successTitle)
                        .foregroundColor(successColor)
                        .font(.appTitleSemiBold24)
                    Text(successMessage)
                        .multilineTextAlignment(.center)
                    
                    BBookingButtonView(title: buttonTitle, action: action, backgroundColor: successColor)
                    .padding(.top, 100)
                    
                }.padding(.horizontal, 30)
                
                
                Spacer()
            }
            .background(Color.white)
            .cornerRadius(radius: 40.0, corners: [.topLeft, .topRight])
            .padding(.top, 190)
            
        }
        .background(
            Image(backgroundImage)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        )
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
    }
}

extension AuthStatusView {
    @ViewBuilder
    static var successView: some View {
        AuthStatusView(icon: AppImage.success.rawValue,
                          successTitle: "Successful!",
                          successMessage: "Your charity program has been successfully created. Now you can check and maintain it in your ‘activity’ menu",
                          action: {
                            //Handle next
                          },
                          successColor: Color(.bGreenSecondary),
                          backgroundImage: AppImage.success_blur_background.rawValue,
                          buttonTitle: "Go To Home")
    }
    
    @ViewBuilder
    static var warningView: some View {
        AuthStatusView(icon: AppImage.warning_icon.rawValue,
                          successTitle: "Pending!",
                          successMessage: "Your charity program has been successfully created. Now you can check and maintain it in your ‘activity’ menu",
                          action: {
                            //Handle next
                          },
                          successColor: Color(.orng),
                          backgroundImage: AppImage.success_blur_background.rawValue,
                          buttonTitle: "Contact Support team")
    }
}


struct SignupSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        AuthStatusView(icon: AppImage.success.rawValue,
                          successTitle: "Successful!",
                          successMessage: "Your charity program has been successfully created. Now you can check and maintain it in your ‘activity’ menu",
                          action: {
                            //Handle next
                          },
                          successColor: Color(.bGreenSecondary),
                          backgroundImage: AppImage.success_blur_background.rawValue,
                          buttonTitle: "Go To Home")
    }
}

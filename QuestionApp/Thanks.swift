//
//  Thanks.swift
//  QuestionApp
//
//  Created by Scholar on 7/15/24.
//

import Foundation
import SwiftUI

struct Thanks: View {
    var body: some View {
        ZStack(){
            Color(hue: 0.651, saturation: 1.0, brightness: 0.90)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20) {
                Text("Thanks for playing! Click below to play again!")
                    .font(.title)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                    Text("🏠")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            .padding()
            .background(Rectangle())
                .foregroundColor(Color(hue: 0.339, saturation: 0.0, brightness: 0.88))
            .cornerRadius(15)
            .padding()
        }
    }
}
struct ThanksView_Previews: PreviewProvider {
    static var previews: some View {
        Thanks()
    }
}

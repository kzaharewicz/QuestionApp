//
//  Question1.swift
//  QuestionApp
//
//  Created by Scholar on 7/15/24.
//

import Foundation
import SwiftUI

struct Question1: View {
    
    @State private var response = ""
    
    var body: some View {
        ZStack(){
            Color(hue: 0.651, saturation: 1.0, brightness: 0.90)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20) {
                Text("Question 1")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Text("Who is the song Drew Barrymore by?")
                    .foregroundColor(.black)
                
                Button("Taylor Swift") {
                    response = "Nope!"
                }
                .foregroundColor(.black)
                
                Button("SZA") {
                    response = "Yes!! Click the arrow to go to the next question!"
                }
                .foregroundColor(.black)
                
                Button("Tyler, the Creator") {
                    response = "Not quite!"
                }
                .foregroundColor(.black)
                NavigationLink(destination: Question2().navigationBarBackButtonHidden(true)) {
                    Text("➡️")
                }
                Text(response)
                    .foregroundColor(.black)
                
            }
            .padding()
            .background(Rectangle())
                .foregroundColor(Color(hue: 0.339, saturation: 0.0, brightness: 0.88))
            .cornerRadius(15)
            .padding()
        }
    }

    struct Question1View_Previews: PreviewProvider {
        static var previews: some View {
            Question1()
        }
    }
}

//
//  Question2.swift
//  QuestionApp
//
//  Created by Scholar on 7/15/24.
//

import Foundation
import SwiftUI

import SwiftUI

struct Question2: View {
    
    @State private var response = ""
    
    var body: some View {
        ZStack(){
            Color(hue: 0.651, saturation: 1.0, brightness: 0.90)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20) {
                Text("Question 2")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                
                Text("Who did Taylor Swift feature on her song Snow on the Beach?")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Button("Lana del Rey") {
                    response = "Yes!! Click the arrow to go to the next question!"
                }
                .foregroundColor(.black)
                
                Button("Zach Bryan") {
                    response = "Nope"
                }
                .foregroundColor(.black)
                
                Button("Phoebe Bridgers") {
                    response = "Not quite!"
                }
                .foregroundColor(.black)
                
                NavigationLink(destination: Question3().navigationBarBackButtonHidden(true)) {
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
}
struct Question2View_Previews: PreviewProvider {
    static var previews: some View {
        Question2()
    }
}

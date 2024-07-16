//
//  Question3.swift
//  QuestionApp
//
//  Created by Scholar on 7/15/24.
//

import Foundation
import SwiftUI

struct Question3: View {
    
    @State private var response = ""
    var body: some View {
        ZStack(){
            Color(hue: 0.651, saturation: 1.0, brightness: 0.90)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20) {
                Text("Question 3")
                    .font(.largeTitle)
                
                Text("Who is the song drive ME crazy! by?")
                    .foregroundColor(Color.black)
                
                Button("Maya Hawke") {
                    response = "Nope"
                }
                .foregroundColor(.black)
                Button("TV Girl") {
                    response = "Not Quite"
                }
                .foregroundColor(.black)
                Button("Lil Yachty") {
                    response = "Yes!! Click the arrow!"
    
                }
                .foregroundColor(.black)
                NavigationLink(destination: Thanks().navigationBarBackButtonHidden(true)) {
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
struct Question3View_Previews: PreviewProvider {
    static var previews: some View {
        Question3()
    }
}

//
//  buttonscreen.swift
//  Rewarder.final
//
//  Created by Zoe Gorman on 8/1/23.
//

import SwiftUI

struct StartChecklistScreen: View {
    let size: CGFloat = 100
    var body: some View {
        VStack {
            Text("Its time to begin todays checklist!")
            Image ("bearwithredhat")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size, height: size)
                .cornerRadius(size / 2)
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                        .frame(width: size, height: size)
                )
            .shadow(radius: 10)
            
        }
 //   Button("begin")
            NavigationLink ("Next") {TaskToDoScreen()}
        }
    }
    struct buttonscreen_Previews: PreviewProvider {
        static var previews: some View {
            StartChecklistScreen()
        }
    }

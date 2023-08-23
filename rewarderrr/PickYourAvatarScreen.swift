//
//  Pickyouravatarscreen.swift
//  Rewarder
//
//  Created by Zoe Gorman on 7/16/23.
//

import SwiftUI

struct PickYourAvatarScreen: View {
    let size: CGFloat = 100
    var body: some View {
        NavigationView {
            VStack {
                Image ("bearimage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size, height: size)
                    .cornerRadius(size / 8)
                    .overlay(
                        Circle()
                            .stroke(Color.gray, lineWidth: 4)
                            .frame(width: size, height: size)
                    )
                Text("Please choose your party hat below")
                Image ("redpartyhat")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size, height: size)
                    .cornerRadius(size / 4)
                NavigationLink ("Next") {StartChecklistScreen()}
            }
        }
    }
}

struct Pickyouravatarscreen_Previews: PreviewProvider {
    static var previews: some View {
        PickYourAvatarScreen()
    }
}



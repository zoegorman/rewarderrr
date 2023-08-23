//
//  TaskToDoScreen.swift
//  Rewarder.final
//
//  Created by Zoe Gorman on 8/16/23.
//

import SwiftUI
struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
 
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(lineWidth: 2)
                .frame(width: 25, height: 25)
                .cornerRadius(5.0)
                .overlay {
                    Image(systemName: configuration.isOn ? "checkmark" : "")
                }
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
 
            configuration.label
 
        }
    }
}
extension ToggleStyle where Self == CheckboxToggleStyle {

    static var checkmark: CheckboxToggleStyle { CheckboxToggleStyle() }
}
struct TaskToDoScreen: View {
    @State private var teethBrushed = false
    @State private var roomCleaned = false
    @State private var mealsHad = false
    @State private var healthyFood = false
    @State private var niceEveryone = false
    @State private var sportActivity = false
    @State private var schoolTime = false
    @State private var homeworkDone = false
    let size: CGFloat = 100
    var body: some View {
        VStack {
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
            List {
                Section(header:Text("Self Care")) {
                    Toggle(isOn:$teethBrushed) { Text("I brushed my teeth")} .toggleStyle(.checkmark)
                    Toggle(isOn:$roomCleaned) { Text("I cleaned my room")} .toggleStyle(.checkmark)}
                Section(header:Text("Nutrition")) {
                    Toggle(isOn:$mealsHad) { Text("I finished three meals")} .toggleStyle(.checkmark)
                    Toggle(isOn:$healthyFood) { Text("I ate healthy foods")} .toggleStyle(.checkmark)}
                Section(header:Text("Social")) {
                    Toggle(isOn:$niceEveryone) { Text("I was nice to everyone")} .toggleStyle(.checkmark)
                    Toggle(isOn:$sportActivity) { Text("I played a sport or did an activity")} .toggleStyle(.checkmark)}
                Section(header:Text("School")) {
                    Toggle(isOn:$schoolTime) { Text("I got to school on time")} .toggleStyle(.checkmark)
                    Toggle(isOn:$homeworkDone) { Text("I did my homework (if I had any)")} .toggleStyle(.checkmark)}
            }
        }
    }
}

    struct TaskToDoScreen_Previews: PreviewProvider {
        static var previews: some View {
            TaskToDoScreen()
        }
    }

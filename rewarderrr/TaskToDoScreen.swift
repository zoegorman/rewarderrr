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
    let size: CGFloat = 100
    var body: some View {
        VStack {
            Text ("CATEGORIES - Self Care, Nutrition, Social, School")
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
                    Toggle(isOn:$teethBrushed) { Text("I cleaned my room")} .toggleStyle(.checkmark)}
                Section(header:Text("Nutrition")) {
                    Toggle(isOn:$teethBrushed) { Text("I finished three meals")} .toggleStyle(.checkmark)
                    Toggle(isOn:$teethBrushed) { Text("I ate healthy foods")} .toggleStyle(.checkmark)}
                Section(header:Text("Social")) {
                    Toggle(isOn:$teethBrushed) { Text("I was nice to everyone")} .toggleStyle(.checkmark)
                    Toggle(isOn:$teethBrushed) { Text("I played a sport or did an activity")} .toggleStyle(.checkmark)}
                Section(header:Text("School")) {
                    Toggle(isOn:$teethBrushed) { Text("I got to school on time")} .toggleStyle(.checkmark)
                    Toggle(isOn:$teethBrushed) { Text("I did my homework (if I had any)")} .toggleStyle(.checkmark)}
            }
        }
    }
}

    struct TaskToDoScreen_Previews: PreviewProvider {
        static var previews: some View {
            TaskToDoScreen()
        }
    }

//
//  ContentView.swift
//  TestDesignAppSwiftUI
//
//  Created by PhoenixDev on 07.06.2020.
//  Copyright © 2020 PhoenixDev. All rights reserved.
//

import SwiftUI

let buttonTitles = ["Home", "Groceries","Work", "Shopping", "Finances", "Routines", "Ideas", "Project", "Study", "Birthdays", "Wedding", "Move", "Books", "Movies"]

struct ContentView: View {
    
    
    
    @State var selectedButtonIndexs = Set<Int>()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Spacer()
                    .padding(EdgeInsets(top: 115, leading: 0, bottom: 0, trailing: 0))
                HStack {
                    Image("Plus")
                        .frame(width: 47.4, height: 47.4, alignment: .center)
                    Text("Hello 👋")
                        .font(Font.system(size: 30, weight: .bold, design: .rounded))
                }
                Spacer()
                .padding(EdgeInsets(top: 90, leading: 0, bottom: 0, trailing: 0))
                
                Text("Welcome to the world’s fastest to-do app! Let’s create up to 3 lists you want to add tasks to.")
                    .font(Font.system(size: 17, weight: .bold, design: .rounded))
                    .frame(width: 250, height: 63)
                    .foregroundColor(Color.gray)
                
                Spacer()
                .padding(EdgeInsets(top: 46, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(0..<buttonTitles.count, id: \.self) {index in
                    SelectableButton(selectedArray: self.$selectedButtonIndexs, index: index)
                        .padding(.vertical, 7)
                        .padding(.horizontal, 22)
                }
                
                Spacer()
                .padding(.vertical, 27)
                
                Button(action: {
                    print("Done")
                }) {
                    Text("Done")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .font(Font.system(size: 17, weight: .semibold, design: .rounded))
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(23)
                }
                    .padding(.horizontal, 22)
                
                Spacer()
                    .padding(.vertical, 19)
            }
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

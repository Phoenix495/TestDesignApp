//
//  SelectableButton.swift
//  TestDesignAppSwiftUI
//
//  Created by PhoenixDev on 08.06.2020.
//  Copyright © 2020 PhoenixDev. All rights reserved.
//

import SwiftUI

struct SelectableButton: View {
    
    @State private var selected = false
    
    @Binding var selectedArray: Set<Int>
    
    var index: Int
    
    var body: some View {
        Button(action: {
            if self.selectedArray.count < 3 && !self.selectedArray.contains(self.index) {
                self.selected = true
                self.selectedArray.insert(self.index)
            } else if self.selectedArray.contains(self.index) {
                self.selected = false
                self.selectedArray.remove(self.index)
            }
            
            print(self.selectedArray)
        }) {
            Text(buttonTitles[index])
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .font(Font.system(size: 17, weight: .semibold, design: .rounded))
                .background(selected ? Color(red: 0.423, green: 0.655, blue: 1) : Color(red: 0.941, green: 0.965, blue: 1))
                .foregroundColor(selected ? Color.white : Color(red: 0.208, green: 0.208, blue: 0.208))
                .cornerRadius(23)
        }
    
    }
}

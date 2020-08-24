//
//  CheckMenuGroupView.swift
//  DragTest
//
//  Created by Raphael Cerqueira on 23/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct CheckMenuGroupView: View {
    var title: String
    var items: [String]
    @Binding var selectedItem: Int
    var handleSelection: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.black)
            
            ForEach(0 ..< self.items.count) { item in
                CheckMenuItemView(title: self.items[item], selectedItem: self.$selectedItem, index: item, handleSelection: self.handleSelection)
            }
        }
        .padding()
        .background(Color.white)
    }
}

struct CheckMenuItemView: View {
    var title: String
    @Binding var selectedItem: Int
    var index: Int
    var handleSelection: () -> Void
    
    var body: some View {
        VStack {
            Button(action: {
                self.selectedItem = self.index
                self.handleSelection()
            }) {
                HStack {
                    VStack {
                        VStack {
                            Image(systemName: self.selectedItem == self.index ? "checkmark.square.fill" : "square")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 22)
                                .background(Color.white)
                        }
                        .padding()
                        .background(self.selectedItem == self.index ? Color(#colorLiteral(red: 0.960893333, green: 0.9814789891, blue: 0.9589970708, alpha: 1)) : Color.white)
                    }
                    .cornerRadius(5)
                    
                    Text(title)
                        .font(.system(size: 20, weight: .semibold))
                        .padding(.leading)
                    
                    Spacer()
                }
                .foregroundColor(Color(#colorLiteral(red: 0.2903698385, green: 0.2933281958, blue: 0.3412199318, alpha: 1)))
                .background(self.selectedItem == self.index ? Color(#colorLiteral(red: 0.8620957732, green: 0.9286302328, blue: 0.8658012748, alpha: 1)) : Color.white)
                .cornerRadius(10)
            }
        }
    }
}

struct CheckMenuGroupView_Previews: PreviewProvider {
    static var previews: some View {
        CheckMenuGroupView(title: "CheckGroup", items: ["Option 1", "Option 2", "Option 3"], selectedItem: .constant(1), handleSelection: {}).background(Color.gray)
    }
}

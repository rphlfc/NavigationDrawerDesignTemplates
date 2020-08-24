//
//  ContentView.swift
//  DragTest
//
//  Created by Raphael Cerqueira on 21/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showLeftMenu = false
    @State var showBottomMenu = false
    @State var showRightMenu = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.3157628179, green: 0.3498623371, blue: 0.3623707592, alpha: 1)).edgesIgnoringSafeArea(.top)
            
            VStack {
                NavigationView()
                
                VStack(spacing: 30) {
                    Button(action: {
                        withAnimation {
                            self.showLeftMenu.toggle()
                        }
                    }) {
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 120, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 0.5045700669, green: 0.4927933812, blue: 0.5453849435, alpha: 1)))
                                .padding(.leading)
                            
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: {
                        withAnimation {
                            self.showRightMenu.toggle()
                        }
                    }) {
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 360, height: 70)
                                .foregroundColor(Color(#colorLiteral(red: 0.5850825906, green: 0.5379269719, blue: 0.6260781288, alpha: 1)))
                                .padding(.leading)
                            
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: {
                        withAnimation {
                            self.showBottomMenu.toggle()
                        }
                    }) {
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 280, height: 130)
                                .foregroundColor(Color(#colorLiteral(red: 0.6667049527, green: 0.5746349096, blue: 0.702940166, alpha: 1)))
                                .padding(.leading)
                            
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                
                Spacer()
            }
            .background(Color(#colorLiteral(red: 0.7894736528, green: 0.6376578212, blue: 0.8239302635, alpha: 1)))
            .edgesIgnoringSafeArea(.bottom)
            
            LeftMenuView(handleSelection: {
                withAnimation {
                    self.showLeftMenu.toggle()
                }
            })
                .frame(width: 280)
                .transition(.move(edge: .leading))
                .offset(x: self.showLeftMenu ? -70 : -(UIScreen.main.bounds.width / 2) - 140)
                .edgesIgnoringSafeArea(.all)
            
            RightMenuView(handleSelection: {
                withAnimation {
                    self.showRightMenu.toggle()
                }
            })
                .frame(maxWidth: 280)
                .transition(.move(edge: .leading))
                .offset(x: self.showRightMenu ? 70 : (UIScreen.main.bounds.width / 2) + 140)
                .edgesIgnoringSafeArea(.all)
            
            BottomMenuView(handleSelection: {
                withAnimation {
                    self.showBottomMenu.toggle()
                }
            })
                .frame(maxHeight: 460)
                .offset(y: self.showBottomMenu ? UIScreen.main.bounds.height - 680 : UIScreen.main.bounds.height - 220)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

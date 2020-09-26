//
//  SideBar.swift
//  FCSideBar
//
//  Created by Kavinkumar Veerakumar on 26/09/20.
//  Copyright © 2020 Kavinkumar Veerakumar. All rights reserved.
//

import SwiftUI

struct SideBar<Drawer, Content>: View where Drawer: View, Content: View {
    
    @Binding var isOpen: Bool
    
    let drawer: () -> Drawer
    let content: () -> Content
    
    init(isOpen: Binding<Bool>, @ViewBuilder drawer: @escaping () -> Drawer, @ViewBuilder content: @escaping () -> Content) {
        self._isOpen = isOpen
        self.drawer = drawer
        self.content = content
    }
    
    var body: some View {
        ZStack {
            Group {
                if isOpen {
                    drawer()
                        .frame(minWidth: 0.0, maxWidth: .infinity, minHeight: 0.0, maxHeight: .infinity, alignment: .topLeading)
                }
            }
            content()
                .animation(.easeIn)
                .cornerRadius(isOpen ? 20.0 : 0.0)
                .scaleEffect(isOpen ? 0.75 : 1.0, anchor: .trailing)
                .offset(x: isOpen ? UIScreen.main.bounds.width * 0.4 : 0.0, y: 0.0)
                .onTapGesture {
                    self.isOpen = false
                }
        }
    }
}


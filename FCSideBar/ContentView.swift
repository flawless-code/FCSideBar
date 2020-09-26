//
//  ContentView.swift
//  FCSideBar
//
//  Created by Kavinkumar Veerakumar on 26/09/20.
//  Copyright © 2020 Kavinkumar Veerakumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOpen: Bool = false
    
    var body: some View {
        SideBar(isOpen: $isOpen, drawer: {
            Color(.purple)
                .edgesIgnoringSafeArea(.all)
            SideBarListView(isOpen: self.$isOpen)
        }) {
            BaseView(isOpen: self.$isOpen)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

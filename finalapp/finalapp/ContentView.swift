//
//  ContentView.swift
//  finalapp
//
//  Created by User15 on 2020/1/13.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            BikeView()
                .tabItem{
                    Image(systemName:"house.fill")
                    Text("主頁")}
            Personal()
                .tabItem{
                    Image(systemName: "questionmark")
                    Text("個人資料")}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

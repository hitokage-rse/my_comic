//
//  TopView.swift
//  MyComic
//
//  Created by kagehito on 2022/07/04.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        TabView {
            MyListView()
                .tabItem {
                    Text("持ってる")
                }
            ToBuyListView()
                .tabItem {
                    Text("買いたい")
                }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}

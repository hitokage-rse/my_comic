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
                    Text(R.string.myComic.topMyListTabTitle())
                }
            ToBuyListView()
                .tabItem {
                    Text(R.string.myComic.topToBuyListTabTitle())
                }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}

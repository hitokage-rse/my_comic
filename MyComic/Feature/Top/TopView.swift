//
//  TopView.swift
//  MyComic
//
//  Created by kagehito on 2022/07/04.
//

import SwiftUI

protocol TopScreen: Screen {}

enum TopScreenEvent: ScreenEvent {}

struct TopView: View, TopScreen {
    typealias UpperLayer = TopPresenter
    let presenter: UpperLayer

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
        TopScene.make().view
    }
}

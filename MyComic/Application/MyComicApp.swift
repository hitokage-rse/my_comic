//
//  MyComicApp.swift
//  MyComic
//
//  Created by kagehito on 2022/07/02.
//

import SwiftUI

@main
struct MyComicApp: App {
    var body: some Scene {
        WindowGroup {
            TopView()
        }
    }
}

struct MyComicApp_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}

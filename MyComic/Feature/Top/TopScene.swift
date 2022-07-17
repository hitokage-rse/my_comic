//
//  TopScene.swift
//  MyComic
//
//  Created by kagehito on 2022/07/04.
//

struct TopScene: AppScene {
    typealias View = TopView
    let view: View

    static func make() -> Self {
        let presenter = TopPresenter(
            interactor: TopInteractor(),
            viewModel: TopViewModel(),
            router: TopRouter()
        )
        let view = TopView(presenter: presenter)
        let scene = TopScene(view: view)
        return scene
    }
}

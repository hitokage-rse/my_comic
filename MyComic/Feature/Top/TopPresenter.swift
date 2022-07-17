//
//  TopPresenter.swift
//  MyComic
//
//  Created by kagehito on 2022/07/04.
//

protocol TopPresentation: Presentation {}

final class TopPresenter: TopPresentation {
    typealias UpperLayer = TopInteractor
    typealias ViewInput = TopScreenEvent
    typealias ViewOutput = TopViewModel
    typealias Router = TopRouter
    internal let interactor: UpperLayer
    let viewModel: ViewOutput
    let router: Router

    init(interactor: UpperLayer, viewModel: ViewOutput, router: Router) {
        self.interactor = interactor
        self.viewModel = viewModel
        self.router = router
    }

    func handle(_ input: ViewInput) {
        // nop
    }
}

enum TopPresenterCommand: PresenterCommand {}

final class TopViewModel: ViewModel {}

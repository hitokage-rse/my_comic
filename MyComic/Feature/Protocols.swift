//
//  Protocols.swift
//  MyComic
//
//  Created by kagehito on 2022/07/04.
//

import Combine

// MARK: - VIPER(各protocolを組み合わせて機能を実装すること)
/// VIPERのViewを示す。「`Presenter`へのイベント通知」と「データの表示反映」を担当する
/// - Note
/// 実体には`XXView`と命名する(そのためprotocol側には`View`と命名していない)
protocol Screen {
    associatedtype UpperLayer: Presentation
    var presenter: UpperLayer { get }
}

protocol ScreenEvent {}

/// VIPERのInteractorを示す。(アプリケーション固有の)「ビジネスロジック」を担当する
/// - Note
/// 実体には`XXInteractor`と命名する
protocol UseCase {
    associatedtype PresenterInput: PresenterCommand
    associatedtype PresenterOutput
    func handle(_ input: PresenterInput)
}

protocol UseCaseRequest {}

protocol UseCaseResponse {}

/// VIPERのPresenterを示す。「`View`の入出力」を担当する
/// - Note
/// 実体には`XXPresenter`と命名する
protocol Presentation {
    associatedtype UpperLayer: UseCase
    associatedtype ViewInput: ScreenEvent
    associatedtype ViewOutput: ViewModel
    associatedtype Router: Wireframe
    func handle(_ input: ViewInput)
    var interactor: UpperLayer { get }
    var viewModel: ViewOutput { get }
    var router: Router { get }
}

protocol PresenterCommand {}

/// VIPERのRouterを示す。「画面遷移」を担当する
/// - Note
/// 実体には`XXRouter`と命名する
protocol Wireframe {}

// MARK: - View Model
protocol ViewModel: ObservableObject {}

// MARK: - DI
/// 各部品の初期化と依存の注入を行う
/// - Note
/// 実体には`XXScene`と命名する
protocol AppScene {
    associatedtype View: Screen
    var view: View { get }
    func make() -> Self
}

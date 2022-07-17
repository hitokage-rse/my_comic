//
//  TopInteractor.swift
//  MyComic
//
//  Created by kagehito on 2022/07/04.
//

import Combine

protocol TopUseCase: UseCase {}

final class TopInteractor: TopUseCase {
    typealias PresenterInput = TopPresenterCommand
    typealias PresenterOutput = TopUseCaseResponse
    private let _output: PassthroughSubject<PresenterOutput, Error> = .init()
    var output: AnyPublisher<PresenterOutput, Error> {
        _output.eraseToAnyPublisher()
    }

    func handle(_ input: PresenterInput) {
        // nop
    }
}

enum TopUseCaseResponse: UseCaseResponse {}

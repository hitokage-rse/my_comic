//
//  APIClient.swift
//  MyComic
//
//  Created by kagehito on 2022/07/17.
//

import Moya
import Combine

final class APIClient {
    static let shared = APIClient()
    private init() {}

    private let provider = MoyaProvider<MultiTarget>()

    lazy var decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()

    func request<T: Decodable>(target: TargetType) -> AnyPublisher<T, Error> {
        return self.provider.requestPublisher(MultiTarget(target))
            .map { $0.data }
            .decode(type: T.self, decoder: decoder)
            .eraseToAnyPublisher()
    }
}

//
//  Repository.swift
//  MyComic
//
//  Created by kagehito on 2022/07/02.
//

/// データ(`Entity`)の保存や復元を担当する。また技術的な詳細を隠蔽しビジネスロジックを保護する
protocol Repository {
    func handle(_ request: UseCaseRequest)
}

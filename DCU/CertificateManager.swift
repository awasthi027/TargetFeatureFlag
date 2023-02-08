//
//  CertificateManager.swift
//  DCU
//
//  Created by Ashish Awasthi on 08/02/23.
//

import Foundation

protocol CertificateManagerProtocol {
    func fetchStoredP12CertificatesSets(completion:@escaping APIRequstHandler)
}
public typealias APIRequstHandler = ([CertificateSetModel]?, Error?)->Void

class CertificateManager: CertificateManagerProtocol {

    public func fetchStoredP12CertificatesSets(completion:@escaping APIRequstHandler) {
        self.fetchStoredP12CertificatesSets { models, error in
            completion(models, error)
        }
    }
}

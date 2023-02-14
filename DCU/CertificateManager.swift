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

public class CertificateManager: CertificateManagerProtocol {

    public init() { /* No Action */ }
    public func certificateLiist(completion:@escaping APIRequstHandler) {
        
        self.fetchStoredP12CertificatesSets { models, error in
            completion(models, error)
        }
    }
}

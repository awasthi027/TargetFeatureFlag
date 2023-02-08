//
//  CertificateManagerProtocol.swift
//  DCU
//
//  Created by Ashish Awasthi on 08/02/23.
//

import Foundation

extension CertificateManagerProtocol {
    func fetchStoredP12CertificatesSets(completion:@escaping APIRequstHandler) {
        completion([CertificateSetModel(certificateName: "Certificate from DCU 1.0")], nil)
    }
}

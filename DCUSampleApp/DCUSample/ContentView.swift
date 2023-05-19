//
//  ContentView.swift
//  DCUSample
//
//  Created by Ashish Awasthi on 14/02/23.
//

import SwiftUI
import DCU

struct ContentView: View {

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Spacer()
            Button {
                callDCU()
            } label: {
                Text("Call DCU")
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .padding()
    }

    func callDCU() {
        debugPrint("callDCU###: callDCU")
        let manager = CertificateManager()
        manager.certificateLiist { models, error in
            if let model = models?.first {
                debugPrint("Certificate###: \(model)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

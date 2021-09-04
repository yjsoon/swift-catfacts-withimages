//
//  CatFactView.swift
//  CatFactsWithImages
//
//  Created by YJ Soon on 4/9/21.
//

import SwiftUI

struct CatFactView: View {
    
    @ObservedObject var catFactManager = CatFactManager()
    
    var body: some View {
        VStack {
            if let catFact = catFactManager.catFact {
                Text(catFact.fact)
                    .padding()
            } else {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
        }
        .onAppear {
            catFactManager.getCatFact()
        }
    }
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}

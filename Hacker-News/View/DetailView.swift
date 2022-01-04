//
//  DetailView.swift
//  Hacker-News
//
//  Created by Sarosh Tahir on 04/01/2022.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.google.com.pk")
    }
}


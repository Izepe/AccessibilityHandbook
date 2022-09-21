//
//  GameView.swift
//  Accessibility Handbook
//
//  Created by Giovani Nascimento Pereira on 20/09/22.
//

import SwiftUI

struct GameView: View {
  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        ForEach(Games.pages, id: \.id) { page in
          NavigationLink {
            page.page
          } label: {
            GameCell(title: page.title, completed: page.completed)
          }
        }
      }
    }
    .navigationTitle("Game!")
  }
}

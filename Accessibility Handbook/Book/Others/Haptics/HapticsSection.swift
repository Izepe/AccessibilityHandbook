//
//  HapticsSection.swift
//  Accessibility Handbook
//
//  Created by Giovani Nascimento Pereira on 21/09/22.
//

import Foundation

struct HapticsSection: Section {
  let title: String = "Haptics"
  let pages: [Page] = [
    HapticsPage(),
    HapticsListPage()
  ]
}

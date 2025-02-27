//
//  LearnTheFeatures.swift
//  Accessibility Handbook
//
//  Created by Giovani Nascimento Pereira on 11/12/22.
//

import SwiftUI

struct LearnTheFeaturesPage: View, Page {
  let title: String = L10n.LearnTheFeatures.title

  var body: some View {
    PageContent(next: TryItYourselfPage(), deeplink: deeplink) {
      Group {
        intro
        voiceOver
        beyondTheVoiceOver
      }
      .toAny()
    }
  }
}

private extension LearnTheFeaturesPage {
  @ViewBuilder
  var intro: some View {
    Text(L10n.LearnTheFeatures.text1)
    Text(L10n.LearnTheFeatures.text2)
    Text(L10n.LearnTheFeatures.text3)
  }

  @ViewBuilder
  var voiceOver: some View {
    Title(L10n.LearnTheFeatures.VoiceOver.title)
    Text(L10n.LearnTheFeatures.VoiceOver.text1)
    Comment(L10n.LearnTheFeatures.VoiceOver.comment1)
    Text(L10n.LearnTheFeatures.VoiceOver.text2)
    Text(L10n.LearnTheFeatures.VoiceOver.text3)
    Comment(L10n.LearnTheFeatures.VoiceOver.comment2)
    InternalLink(
      deeplink: IndexView.voiceOverGuideDeeplink(),
      title: L10n.voiceOverGuide
    )
    Text(L10n.LearnTheFeatures.VoiceOver.text4)
  }

  @ViewBuilder
  var beyondTheVoiceOver: some View {
    Title(L10n.LearnTheFeatures.BeyondTheVoiceOver.title)
    Text(L10n.LearnTheFeatures.BeyondTheVoiceOver.text1)
    Text(L10n.LearnTheFeatures.BeyondTheVoiceOver.text2)
    Text(L10n.LearnTheFeatures.BeyondTheVoiceOver.text3)
    Text(L10n.LearnTheFeatures.BeyondTheVoiceOver.text4)
    InternalLink(
      deeplink: IndexView.colorsDeeplink(),
      title: L10n.ColorsGuide.title
    )
    InternalLink(
      deeplink: IndexView.dynamicFontsDeeplink(),
      title: L10n.DynamicFonts.title
    )
    InternalLink(
      deeplink: HapticsPage().deeplink,
      title: L10n.haptics
    )
    InternalLink(
      deeplink: IndexView.motionDeeplink(),
      title: L10n.motion
    )
    InternalLink(
      deeplink: IndexView.visualAidDeeplink(),
      title: L10n.visualAid
    )
  }
}

//
//  CellsScreenDataSource+ReferralProgramTableViewCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 25.07.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - ReferralProgramTableViewCell

/// Моделька для ячейки
struct ReferralProgramTableViewCellModel: CellModel {
  
  var titleCell: String = "ReferralProgramTableViewCell"
  var reuseIdentifier = CellsScreenCell.referralProgramTableViewCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == ReferralProgramTableViewCellModel {
  static func makeForReferralProgramTableViewCell() -> CellsScreenDataSource {
    let models = [
      ReferralProgramTableViewCellModel()
    ]
    
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? ReferralProgramTableViewCell else {
        return
      }
      cell.configureCellWith(
        lottieAnimationJSONName: "gift_referral_program",
        title: "Как это работает?",
        firstStepTitle: "1. Приглашайте друзей, знакомых или коллег в приложение по ссылке",
        link: "https://SosinVitalii.com/eaigsengkjnsdakg/alekgmnlakeg/",
        secondStepTitle: "2. Дождитесь успешных скачиваний и получите БЕСПЛАТНЫЙ доступ к Random Premium",
        circleStepsTitle: "Осталось установок:",
        currentStep: 2,
        maxSteps: 5,
        linkAction: { link in
          print(link ?? "")
        }
      )
    }
  }
}


//
//  CellsScreenDataSource+LabelGradient.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 02.05.2022.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - LabelGradientModel

/// Моделька для ячейки
struct LabelGradientModel: CellModel {
  let titleADVText: String?
  let gradientDVLabel: [UIColor]
  let font: UIFont?
  let textColor: UIColor?
  let borderWidth: CGFloat?
  let borderColor: UIColor?
  
  var titleCell: String
  var reuseIdentifier = CellsScreenCell.labelGradientView.reuseIdentifier
}

extension CellsScreenDataSource where Model == LabelGradientModel {
  static func makeForLabelGradient() -> CellsScreenDataSource {
    let models = [
      LabelGradientModel(
        titleADVText: "23",
        gradientDVLabel: [
          fancyColor.only.primaryRed,
          fancyColor.only.primaryPink
        ],
        font: nil,
        textColor: nil,
        borderWidth: nil,
        borderColor: nil,
        titleCell: "LabelGradientView"
      ),
      LabelGradientModel(
        titleADVText: "ХИТ",
        gradientDVLabel: [
          fancyColor.only.primaryGreen,
          fancyColor.only.secondaryGreen
        ],
        font: nil,
        textColor: nil,
        borderWidth: nil,
        borderColor: nil,
        titleCell: "LabelGradientView"
      ),
      LabelGradientModel(
        titleADVText: "10.0",
        gradientDVLabel: [
          fancyColor.only.primaryBlue,
          fancyColor.darkAndLightTheme.primaryBlack
        ],
        font: RandomFont.primaryBold50,
        textColor: fancyColor.only.primaryRed,
        borderWidth: 2,
        borderColor: fancyColor.only.primaryRed,
        titleCell: "LabelGradientView"
      )
    ]
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? LabelGradientTableViewCell else {
        return
      }
      cell.configureCellWith(
        titleCell: model.titleCell,
        titleText: model.titleADVText,
        font: model.font,
        textColor: model.textColor,
        borderWidth: model.borderWidth,
        borderColor: model.borderColor,
        gradientDVLabel: model.gradientDVLabel
      )
    }
  }
}

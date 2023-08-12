//
//  CellsScreenDataSource+CustomTextCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 22.05.2022.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - CustomTextCellModel

/// Моделька для ячейки
struct CustomTextCellModel: CellModel {
  
  let titleText: String?
  let textColor: UIColor?
  let textAlignment: NSTextAlignment
  
  var titleCell: String
  var reuseIdentifier = CellsScreenCell.customTextCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == CustomTextCellModel {
  static func makeForCustomText() -> CellsScreenDataSource {
    let models = [
      CustomTextCellModel(titleText: "CustomTextCell",
                          textColor: fancyColor.darkAndLightTheme.primaryGray,
                          textAlignment: .left,
                          titleCell: ""),
      CustomTextCellModel(titleText: "CustomTextCell",
                          textColor: fancyColor.only.primaryPink,
                          textAlignment: .center,
                          titleCell: ""),
      CustomTextCellModel(titleText: "CustomTextCell",
                          textColor: fancyColor.only.primaryBlue,
                          textAlignment: .right,
                          titleCell: "")
    ]
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? CustomTextCell else {
        return
      }
      cell.configureCellWith(titleText: model.titleText,
                             textColor: model.textColor,
                             textFont: fancyFont.primaryRegular16,
                             textAlignment: model.textAlignment)
    }
  }
}

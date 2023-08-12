//
//  CellsScreenDataSource+LabelBigGrayCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 18.06.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - LabelBigGrayCell

/// Моделька для ячейки
struct LabelBigGrayCellModel: CellModel {
  var titleCell: String = "LabelBigGrayCell"
  var reuseIdentifier = CellsScreenCell.labelBigGrayCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == LabelBigGrayCellModel {
  static func makeForLabelBigGrayCell() -> CellsScreenDataSource {
    let models = [
      LabelBigGrayCellModel()
    ]
    
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? LabelBigGrayCell else {
        return
      }
      cell.configureCellWith(titleText: model.titleCell)
    }
  }
}

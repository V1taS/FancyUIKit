//
//  CellsScreenDataSource+ColorSliderCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 13.05.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - ColorSliderCell

/// Моделька для ячейки
struct ColorSliderCellModel: CellModel {
  
  var titleCell: String = "ColorSliderCell"
  var reuseIdentifier = CellsScreenCell.colorSlider.reuseIdentifier
}

extension CellsScreenDataSource where Model == ColorSliderCellModel {
  static func makeForColorSlider() -> CellsScreenDataSource {
    let models = [
      ColorSliderCellModel()
    ]
    
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? ColorSliderCell else {
        return
      }
      cell.configureCellWith(titleCell: model.titleCell)
    }
  }
}

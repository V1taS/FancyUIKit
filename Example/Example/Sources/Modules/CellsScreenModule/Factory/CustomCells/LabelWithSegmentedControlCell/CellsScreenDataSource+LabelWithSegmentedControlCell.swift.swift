//
//  CellsScreenDataSource+LabelWithSegmentedControlCell.swift.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 28.05.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - LabelWithSegmentedControlCell

/// Моделька для ячейки
struct LabelWithSegmentedControlCellModel: CellModel {
  var titleCell: String = "LabelWithSegmentedControlCell"
  var reuseIdentifier = CellsScreenCell.labelWithSegmentedControlCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == LabelWithSegmentedControlCellModel {
  static func makeForLabelWithSegmentedControlCell() -> CellsScreenDataSource {
    let models = [
      LabelWithSegmentedControlCellModel()
    ]
    
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? LabelWithSegmentedControlCell else {
        return
      }
      cell.configureCellWith(titleText: model.titleCell,
                             startSelectedSegmentIndex: 1,
                             listOfItemsInSegmentedControl: ["ru", "en", "it", "es"],
                             segmentControlValueChanged: { index in
        print("interfaceModeValueChanged, index \(index)")
      })
    }
  }
}

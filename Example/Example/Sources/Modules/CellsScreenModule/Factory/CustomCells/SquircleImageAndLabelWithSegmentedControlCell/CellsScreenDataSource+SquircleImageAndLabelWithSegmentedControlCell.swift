//
//  CellsScreenDataSource+SquircleImageAndLabelWithSegmentedControlCell.swift
//  RandomUIKitExample
//
//  Created by Artem Pavlov on 05.05.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - SquircleImageAndLabelWithSegmentedControlCell

/// Моделька для ячейки
struct SquircleImageAndLabelWithSegmentedControlCellModel: CellModel {
  let squircleBGColors: [UIColor]
  let squircleBGAlpha: CGFloat
  let leftSideImage: UIImage?
  let leftSideImageColor: UIColor?

  var titleCell: String = "SquircleImageAndLabelWithSegmentedControlCell"
  var reuseIdentifier = CellsScreenCell.squircleImageAndLabelWithSegmentedControlCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == SquircleImageAndLabelWithSegmentedControlCellModel {
  static func makeForSquircleImageAndLabelWithSegmentedControlCell() -> CellsScreenDataSource {
    let models = [
      SquircleImageAndLabelWithSegmentedControlCellModel(
        squircleBGColors: [
          fancyColor.only.primaryGreen,
          fancyColor.darkAndLightTheme.primaryGray
        ],
        squircleBGAlpha: 1,
        leftSideImage: UIImage(systemName: "cursorarrow.click.2"),
        leftSideImageColor: .white
      )
    ]

    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? SquircleImageAndLabelWithSegmentedControlCell else {
        return
      }
      cell.configureCellWith(squircleBGColors: model.squircleBGColors,
                             squircleBGAlpha: model.squircleBGAlpha,
                             leftSideImage: model.leftSideImage,
                             leftSideImageColor: model.leftSideImageColor,
                             titleText: model.titleCell,
                             startSelectedSegmentIndex: 1,
                             listOfItemsInSegmentedControl: ["Авто", "Темная", "Светлая"],
                             segmentControlValueChanged: { index in
        print("interfaceModeValueChanged, index \(index)")
      })
    }
  }
}

//
//  CellsScreenDataSource+ImageAndLabelWithButtonBigCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 16.06.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - ImageAndLabelWithButtonBigCell

/// Моделька для ячейки
struct ImageAndLabelWithButtonBigCellModel: CellModel {
  let leftSideEmoji: Character?
  let titleText: String?
  let rightButtonImage: UIImage?
  
  var titleCell: String = "ImageAndLabelWithButtonBigCell"
  var reuseIdentifier = CellsScreenCell.imageAndLabelWithButtonBigCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == ImageAndLabelWithButtonBigCellModel {
  static func makeForImageAndLabelWithButtonBigCell() -> CellsScreenDataSource {
    let models = [
      ImageAndLabelWithButtonBigCellModel(
        leftSideEmoji: "🥹",
        titleText: "Новая ячейка",
        rightButtonImage: UIImage(systemName: "square.and.pencil")),
      ImageAndLabelWithButtonBigCellModel(
        leftSideEmoji: "😍",
        titleText: "ImageAndLabelWithButtonBigCell",
        rightButtonImage: nil),
    ]
    
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? ImageAndLabelWithButtonBigGrayCell else {
        return
      }
      
      cell.configureCellWith(
        leftSideEmoji: model.leftSideEmoji,
        titleText: model.titleText,
        rightButtonImage: model.rightButtonImage,
        actionCell: {
          print("actionCell")
        },
        actionButton: {
          print("actionButton")
        }
      )
      if let _ = model.rightButtonImage {
        cell.style = .selected
      }
    }
  }
}

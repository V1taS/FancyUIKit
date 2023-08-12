//
//  CellsScreenDataSource+EmoticonSelectionViewCell.swift
//  RandomUIKitExample
//
//  Created by Vitalii Sosin on 17.06.2023.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - EmoticonSelectionViewCell

/// Моделька для ячейки
struct EmoticonSelectionViewCellModel: CellModel {
  let emoticon: Character?
  
  var titleCell: String = "EmoticonSelectionViewCell"
  var reuseIdentifier = CellsScreenCell.emoticonSelectionViewCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == EmoticonSelectionViewCellModel {
  static func makeForEmoticonSelectionViewCell() -> CellsScreenDataSource {
    let models = [
      EmoticonSelectionViewCellModel(emoticon: "♥️"),
      EmoticonSelectionViewCellModel(emoticon: "🤖")
    ]
    
    return CellsScreenDataSource(models: models) { (model, cell) in
      guard let cell = cell as? EmoticonSelectionViewCell else {
        return
      }
      
      cell.configureWith(titleCell: model.titleCell,
                         emoticon: model.emoticon,
                         actionEmoticon: { emoticon, style in
        print("Emoticon selection")
      })
    }
  }
}

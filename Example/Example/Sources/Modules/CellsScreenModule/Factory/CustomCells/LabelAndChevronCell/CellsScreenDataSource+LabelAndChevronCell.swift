//
//  CellsScreenDataSource+LabelAndChevronCell.swift
//  RandomUIKitExample
//
//  Created by Tatiana Sosina on 22.05.2022.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - LabelAndChevronCellModel

/// Моделька для ячейки
struct LabelAndChevronCellModel: CellModel {
    
    let titleText: String?
    let image: UIImage?
    
    var titleCell: String
    var reuseIdentifier = CellsScreenCell.labelAndChevronCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == LabelAndChevronCellModel {
    static func makeForLabelAndChevron() -> CellsScreenDataSource {
        let models = [
            LabelAndChevronCellModel(titleText: "LabelAndChevronCell",
                                   image: UIImage(systemName: "chevron.compact.right"),
                                   titleCell: "")
        ]
        return CellsScreenDataSource(models: models) { (model, cell) in
            guard let cell = cell as? LabelAndChevronCell else {
                return
            }
          cell.configureCellWith(titleText: model.titleText)
        }
    }
}

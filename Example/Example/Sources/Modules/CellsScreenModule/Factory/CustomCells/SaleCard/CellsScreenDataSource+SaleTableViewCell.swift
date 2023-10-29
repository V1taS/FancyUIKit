//
//  CellsScreenDataSource+SaleTableViewCell.swift
//  Example
//
//  Created by Vitalii Sosin on 29.10.2023.
//  Copyright © 2023 SosinVitalii.com. All rights reserved.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - SaleModel

/// Моделька для ячейки
struct SaleModel: CellModel {
    
    let height: CGFloat
    
    var titleCell: String
    var reuseIdentifier = CellsScreenCell.saleCardCell.reuseIdentifier
}

extension CellsScreenDataSource where Model == SaleModel {
    static func makeForSale() -> CellsScreenDataSource {
        let models = [
          SaleModel(height: 80, titleCell: "SaleTableViewCell")
        ]
        return CellsScreenDataSource(models: models) { (_, cell) in
            guard let cell = cell as? SaleTableViewCell else {
                return
            }
          cell.configureCellWith(title: "Распродажа", oldPrice: "349 RUB", newPrice: "1745 RUB")
        }
    }
}

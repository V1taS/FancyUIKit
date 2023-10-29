//
//  SaleTableViewCell.swift
//  FancyUIKit
//
//  Created by Vitalii Sosin on 29.10.2023.
//

import UIKit
import FancyStyle

// MARK: - SmallButtonCell

public final class SaleTableViewCell: UITableViewCell {
  
  // MARK: - Public property
  
  /// Identifier для ячейки
  public static let reuseIdentifier = SaleTableViewCell.description()
  
  // MARK: - Private property
  
  private let oldPriceLabel = UILabel()
  private let newPriceLabel = UILabel()
  private let titleLabel = UILabel()
  private let strikeThroughView = DiagonalStrikeThroughView()
  
  private let horizontalStack = UIStackView()
  private let verticalStack = UIStackView()
  
  // MARK: - Initilisation
  
  public override init(style: CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    configureLayout()
    applyDefaultBehavior()
  }
  
  public required init?(coder aDecoder: NSCoder) {
    fatalError()
  }
  
  // MARK: - Public func
  
  /// Настраиваем ячейку
  /// - Parameters:
  ///  - title: Заголовок
  ///  - oldPrice: Старая цена
  ///  - newPrice: Новая цена
  public func configureCellWith(title: String?, oldPrice: String?, newPrice: String?) {
    oldPriceLabel.text = oldPrice
    newPriceLabel.text = newPrice
    titleLabel.text = title
  }
  
  public override func prepareForReuse() {
    super.prepareForReuse()
    layer.cornerRadius = .zero
  }
  
  // MARK: - Private func
  
  private func configureLayout() {
    let appearance = Appearance()
    
    [UIView(), oldPriceLabel, newPriceLabel, UIView()].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
      horizontalStack.addArrangedSubview($0)
    }
    
    [titleLabel, horizontalStack].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
      verticalStack.addArrangedSubview($0)
    }
    
    [verticalStack, strikeThroughView].forEach {
      $0.translatesAutoresizingMaskIntoConstraints = false
      contentView.addSubview($0)
    }
    
    NSLayoutConstraint.activate([
      verticalStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                             constant: appearance.insets.left),
      verticalStack.topAnchor.constraint(equalTo: contentView.topAnchor,
                                         constant: appearance.insets.top),
      verticalStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                              constant: -appearance.insets.right),
      verticalStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,
                                            constant: -appearance.insets.bottom),
      
      strikeThroughView.leadingAnchor.constraint(equalTo: oldPriceLabel.leadingAnchor),
      strikeThroughView.trailingAnchor.constraint(equalTo: oldPriceLabel.trailingAnchor),
      strikeThroughView.topAnchor.constraint(equalTo: oldPriceLabel.topAnchor),
      strikeThroughView.bottomAnchor.constraint(equalTo: oldPriceLabel.bottomAnchor)
    ])
  }
  
  private func applyDefaultBehavior() {
    backgroundColor = .fancy.darkAndLightTheme.primaryWhite
    contentView.backgroundColor = .fancy.darkAndLightTheme.primaryWhite
    selectionStyle = .none
    
    oldPriceLabel.textColor = .fancy.darkAndLightTheme.secondaryGray
    oldPriceLabel.font = .fancy.primaryBold32
    newPriceLabel.textColor = .fancy.darkAndLightTheme.primaryGray
    newPriceLabel.font = .fancy.primaryBold32
    
    titleLabel.textColor = .fancy.only.primaryRed
    titleLabel.font = .fancy.primaryBold32
    
    horizontalStack.axis = .horizontal
    horizontalStack.spacing = 16
    verticalStack.axis = .vertical
    verticalStack.alignment = .center
    verticalStack.spacing = 8
  }
}

// MARK: - Appearance

private extension SaleTableViewCell {
  struct Appearance {
    let insets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
  }
}


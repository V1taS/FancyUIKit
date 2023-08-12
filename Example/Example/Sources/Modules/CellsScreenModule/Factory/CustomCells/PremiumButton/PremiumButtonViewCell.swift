//
//  File.swift
//  
//
//  Created by Антон Тропин on 03.06.23.
//

import UIKit
import FancyUIKit
import FancyStyle

// MARK: - ButtonTableViewCell

public final class PremiumButtonTableViewCell: UITableViewCell {
  
  // MARK: - Public property
  
  /// Identifier для ячейки
  public static let reuseIdentifier = PremiumButtonTableViewCell.description()
  
  // MARK: - Private properties
  
  private let premiumButtonView = PremiumButtonView()
  
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
  
  /// Настраиваем вью
  /// - Parameters:
  ///  - title: Заголовок
  ///  - style: Стиль
  public func configureWith(title: String?,
                            style: PremiumButtonView.Style) {
    premiumButtonView.configureWith(title: title, style: style)
  }
  
  // MARK: - Private func
  
  private func configureLayout() {
    premiumButtonView.translatesAutoresizingMaskIntoConstraints = false
    contentView.addSubview(premiumButtonView)
    
    NSLayoutConstraint.activate([
      premiumButtonView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
      premiumButtonView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
    ])
  }
  
  private func applyDefaultBehavior() {
    backgroundColor = fancyColor.darkAndLightTheme.primaryWhite
    selectionStyle = .none
  }
}

// MARK: - Appearance

private extension PremiumButtonTableViewCell {
  struct Appearance {
    let minInset: CGFloat = 4
    let defaultInset: CGFloat = 16
    let stackViewSpacing: CGFloat = 16
  }
}

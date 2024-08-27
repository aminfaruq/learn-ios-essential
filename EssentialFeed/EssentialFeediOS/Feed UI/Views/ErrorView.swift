//
//  ErrorView.swift
//  EssentialFeediOS
//
//  Created by Phincon on 27/08/24.
//

import UIKit
import SnapKit

public final class ErrorView: UIView {
    public var message: String?
    
    // Initialize any UI elements here, like a label or button
    private let messageLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .red
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        messageLabel.text = message
        addSubview(messageLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        messageLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(20) // Adjust the inset as needed
        }
    }
}

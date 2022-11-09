import UIKit

class ProfileTableHederView: UIView {
    var profile: Profile = {
        return Profile(name: "Randall", imageSrc: "avatar", state: "some state")
    }()
    let profileHeaderView: ProfileHeaderView

    public override init(frame: CGRect) {
        profileHeaderView = ProfileHeaderView(
            profile: profile,
            frame: .zero
        )
        super.init(frame: frame)
        
        self.backgroundColor = .lightGray
        
        addSubviews()
        activateConstraints()
    }
    
    private func addSubviews() {
        addSubview(profileHeaderView)
    }
    
    private func activateConstraints() {
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            profileHeaderView.leadingAnchor.constraint(equalTo: leadingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: topAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

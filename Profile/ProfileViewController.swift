import UIKit

class ProfileViewController: UIViewController{
    
    
    private let postModel = PostModel.makePostModel()
    
    fileprivate let forCellReuseIdentifier = "test"

    private lazy var tableView: UITableView = {
        var tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.identifier)
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: PhotosTableViewCell.identifier)
        return tableView
    }()
    
    private func layout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.backgroundColor = .lightGray
        view.addSubview(tableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        layout()
        navigationController?.navigationBar.isHidden = true
    }

}

extension ProfileViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        section == 0 ? 1 : postModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PhotosTableViewCell.identifier) as? PhotosTableViewCell else {return UITableViewCell()}
            cell.delegate = self
            cell.selectionStyle = .none
            return cell
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier) as? PostTableViewCell else {return UITableViewCell()}
        cell.setupCell(postModel[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
}
// MARK: - PhotosTableViewCellDelegate
extension ProfileViewController: PhotosTableViewCellDelegate {
    
    func openViewAllCollection() {
        let allPhotVC = PhotosViewController()
        allPhotVC.collectionPhotos = CollectionModel.makeArrayPhotos()
        navigationController?.pushViewController(allPhotVC, animated: true)
    }
}
extension ProfileViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let profileHeaderView = ProfileHeaderView()
            tableView.backgroundColor = .white
            return profileHeaderView
        }
        
        return nil
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        220
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            let allPhotosView = PhotosViewController()
            allPhotosView.collectionPhotos = CollectionModel.makeArrayPhotos()
            navigationController?.pushViewController(allPhotosView, animated: true)
        }
        
        else{
            let cell = tableView.cellForRow(at: indexPath) as! PostTableViewCell
            cell.modelPostCounter.views += 1
            cell.viewsLabel.text = "Views: \(cell.modelPostCounter.views)"
            
            let detailPost = DetailPostViewController()
            detailPost.setupCell(postModel[indexPath.row])
            navigationController?.pushViewController(detailPost, animated: true)
        }
        
    }
    
}
    
  
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }


extension UIView {
    static var identifier: String {
        return String(describing: self)
    }
}

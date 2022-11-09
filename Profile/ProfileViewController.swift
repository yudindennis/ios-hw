import UIKit

class ProfileViewController: UIViewController {

    fileprivate let forCellReuseIdentifier = "test"
    var profile: Profile = {
        return Profile(name: "Randall", imageSrc: "avatar", state: "some state")
    }()
    let posts: [Post] = [
        {
            return Post(
                author: "Имя",
                description: "Произошла встреча с пчелой ",
                image: "post1.jpg",
                likes: 10,
                views: 25)
        }(),
        {
            return Post(
                author: "Name",
                description: "Описание",
                image: "post2.jpg",
                likes: 201,
                views: 235
            )
        }(),
        {
            return Post(
                author: "Имя",
                description: "Описание",
                image: "post3.jpg",
                likes: 30,
                views: 75)
        }(),
        {
            return Post(
                author: "Имя",
                description: "Описание",
                image: "post1.jpg",
                likes: 25,
                views: 59)
        }(),
        {
            return Post(
                author: "Имя",
                description: "Описание",
                image: "post2.jpg",
                likes: 35,
                views: 338)
        }(),
    ]
    
    let postsTableView: UITableView = {
        let postsTableView = UITableView.init(frame: .zero, style: .plain)
        postsTableView.translatesAutoresizingMaskIntoConstraints = false
        return postsTableView
    }()
    
    private func activateConstraints() {
        NSLayoutConstraint.activate([
            postsTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            postsTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            postsTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            postsTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Profile"
        view.backgroundColor = .systemGray
       
        view.addSubview(postsTableView)
        
        postsTableView.dataSource = self
        postsTableView.delegate = self
        postsTableView.rowHeight = UITableView.automaticDimension
        
        postsTableView.register(PostTableViewCell.self, forCellReuseIdentifier: forCellReuseIdentifier)
        
        activateConstraints()
        
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = ProfileTableHederView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 250))
            
            return headerView
        }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 250
        }
}

extension ProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: forCellReuseIdentifier, for: indexPath) as! PostTableViewCell
        
        let post = self.posts[indexPath.row] as Post
        cell.titleView.text = post.author
        let image = UIImage(named: post.image)
        cell.postImageView.image = image
        cell.likesCounterView.text = "Likes: \(post.likes)"
        cell.viewsCounterView.text = "Views: \(post.views)"
        cell.descriptionView.text = post.description
        
        return cell
    }
}

extension ProfileViewController: UITableViewDelegate {
    func selectedCell(row: Int) {
        let viewControllerNext = UIViewController()
        viewControllerNext.view.backgroundColor = .systemRed
        viewControllerNext.title = "\(posts[row].author)".uppercased()
        
        navigationController?.pushViewController(viewControllerNext, animated: true)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedCell(row: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
}

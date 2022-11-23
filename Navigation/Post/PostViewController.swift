
import UIKit

struct Post {
    var title: String
    
    init (title: String) {
        self.title = title
    }
}


class PostViewController: UIViewController {

    var post: Post?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
   
        let vcTitle = Post(title: "Заголовок поста")
        
        title = vcTitle.title
    
        
        navigationItem.rightBarButtonItem = .init(
            image: .init(systemName: "globe"),
            style: .plain,
            target: self,
            action: #selector(onTap)
        )
    }

    @objc func onTap() {
        let controller = InfoViewController()
        controller.view.backgroundColor = .red
        present(controller, animated: true)
    }
    
}
        
        
        
        
      
                         

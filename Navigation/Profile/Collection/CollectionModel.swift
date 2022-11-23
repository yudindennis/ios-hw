
import UIKit

struct CollectionModel {
    let image: UIImage?
    
    static func makeArrayPhotos() -> [CollectionModel]{
        var collectionPhotos = [CollectionModel]()
        for element in 0...14 {
            collectionPhotos.append(CollectionModel(image: UIImage(named: "\(element)")))
        }
        return collectionPhotos
    }
}

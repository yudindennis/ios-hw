import  UIKit

struct PostModel {
    let author: String
    let description: String?
    let image: UIImage?
    var likes: Int
    var views: Int
    
    static func makePostModel() -> [PostModel] {
        var post = [PostModel]()
        post.append(PostModel(author: "Новости Перми",
                              description: "В Перми потеплеет до +7° и выпадет до 70% месячной нормы осадков. Синоптики подготовили прогноз на ближайшие дни. По их данным, до конца недели ожидается значительное потепление с высоким уровнем осадков. Затем ситуация резко изменится: очень сильно похолодает.",
                              image: UIImage(named:"post2"),
                              likes: 0,
                              views: 0))
        post.append(PostModel(author: "Имя",
                              description: "Произошла встреча с пчелой ",
                              image: UIImage(named:"post1"),
                              likes: 0,
                              views: 0))
        post.append(PostModel(author: "Pittsburgh Penguins NHL",
                              description: "Из хорошего. Сидни Кросби сделал 900-ю результативную передачу в карьере. На это ему потребовалось 1120 матчей. Только пять игроков в истории лиги Грецки, Лемье, Коффи, Оутс, Фрэнсис добирались до этого рубежа быстрее",
                              image: UIImage(named:"post3"),
                              likes: 0,
                              views: 0))
        post.append(PostModel(author: "Pittsburgh Penguins NHL",
                              description: "Настроение прямо сейчас.",
                              image: UIImage(named:"post4"),
                              likes: 0,
                              views: 0))
        return post
    }
    
}

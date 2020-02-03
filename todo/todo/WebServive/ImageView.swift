import SwiftUI

struct ImageView: View {
   @ObservedObject var imageLoader = ImageLoader()
    init(_ url: String) {
        self.imageLoader.load(url)
    }
    var body: some View {
       
        if let image = imageLoader.downloadedImage {
            return Image(uiImage: image).resizable()
        }else {
            return Image(systemName: "photo").resizable()
          
        }
    }
}

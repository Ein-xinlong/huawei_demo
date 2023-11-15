@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Image($r('app.media.icon'))
          .width(100)
          .height(100)
      }
      .width('100%')
    }
    .height('100%')
  }
}
@Component
export struct ActionBar {
  private title: string = ""

  aboutToAppear() {

  }

  aboutToDisappear() {

  }

  build() {
    Row() {
      Text(this.title)
        .fontColor(Color.Black)
        .fontSize(21)
        .alignRules({ middle: { anchor: "action_bar", align: HorizontalAlign.Center } })
    }
    .height('100%')
    .width('100%')
    .alignItems(VerticalAlign.Center)
    .backgroundColor(Color.Gray)
    .id("action_bar")
  }
}
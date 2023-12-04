import promptAction from '@ohos.promptAction'
@Component
export struct Banner{
    images : Array<Resource> = []
    build() {
      Swiper() {
        ForEach(this.images,(item:Resource,index)=>{
          Image(item).onClick((event)=>{
              promptAction.showToast({ message:"点击banner "+index})
          })
        })
      }
      .id('swiper_main')
      .width('90%')
      .height('100%')
      .margin({ top: 10 })
      .backgroundColor(Color.White)
      .indicatorStyle({
        size: 30, left: 0, color: Color.Black
      }).borderRadius(5)
    }
}
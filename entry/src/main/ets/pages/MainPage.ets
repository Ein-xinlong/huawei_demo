import { UtilsPage } from './UtilsPage'

@Entry
@Component
@Preview
struct MainPage {
  private controller: TabsController = new TabsController()
  @State index: Number = 0

  @Builder TabBuilder(index: Number, content: string) {
    Row() {
      Column() {
        if (index==0){
          Image($r('app.media.icon_society')).width('25').height('25')
        }else if (index==1){
          Image($r('app.media.icon_news')).width('25').height('25')
        }else if (index==2){
          Image($r('app.media.icon_tool')).width('25').height('25')
        }else{
          Image($r('app.media.icon_mine')).width('25').height('25')
        }

        Text(content).fontSize(12).fontColor(this.index === index ? Color.Blue : Color.Black).margin({ top: 5 })
      }.justifyContent(FlexAlign.Center).width('100%').height('75%').alignItems(HorizontalAlign.Center)
    }.width('100%').alignItems(VerticalAlign.Center)
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.controller }) {
        TabContent() {
          UtilsPage()
        }.tabBar(this.TabBuilder(0, '工具'))

        TabContent() {
          Column(){
              Text('新闻页')
          }.width('100%').height('100%').backgroundColor(Color.Orange).justifyContent(FlexAlign.Center)
        }.tabBar(this.TabBuilder(1, '新闻'))

        TabContent() {
          Column(){
            Text('社会页')
          }.width('100%').height('100%').backgroundColor(Color.Pink).justifyContent(FlexAlign.Center)
        }.tabBar(this.TabBuilder(2, '社会'))

        TabContent() {
          Column(){
            Text('我的页')
          }.width('100%').height('100%').backgroundColor(Color.Green).justifyContent(FlexAlign.Center)
        }.tabBar(this.TabBuilder(3, '我的'))
      }.onChange((index: number) => {
        this.index = index
      }).barMode(BarMode.Fixed)
      .animationDuration(400)
    }.width('100%')
  }
}
import { SmallUtil } from '../entryability/bean/SmallUtil'
import { ActionBar } from '../views/ActionBar'
import { Banner } from '../views/Banner'
import MainVM from '../viewmodel/MainVM'
import Prompt from '@system.prompt'
import ArrayList from '@ohos.util.ArrayList';
@Component
export struct UtilsPage {
  aboutToAppear() {

  }
  //仅对@Entry修饰的组件生效
  onPageShow() {
    this.smallUtils = MainVM.getSmallUtils()
  }
  //仅对@Entry修饰的组件生效
  onPageHide() {

  }
  //仅对@Entry修饰的组件生效  点击返回按键时触发
  onBackPress() {

  }

  aboutToDisappear() {

  }

  bannerImg: Array<Resource> = [$r('app.media.banner1_'), $r('app.media.banner2'), $r('app.media.banner3'), $r('app.media.banner4')]
  @State smallUtils: Array<SmallUtil> = MainVM.getSmallUtils()

  build() {
    Column() {
      Banner({ images: this.bannerImg })
        .height('160')
        .alignRules({ left: { anchor: 'column_main', align: HorizontalAlign.Center } })
      Column() {
        Text('小工具').margin({ left: 20, top: 10 }).fontWeight(FontWeight.Bold)
        Grid() {
          ForEach(this.smallUtils, (item: SmallUtil,index) => {
            GridItem() {
              Column() {
                Image(item.img).width(40).height(40)
                Text(item.content).fontSize(16).margin({ top: 5 })
              }
            }.layoutWeight(4).onClick((event)=>{
               Prompt.showToast({message:"点击工具："+this.smallUtils[index].content})
            })
          })
        }
        .width('90%')
        .columnsTemplate('4')
        .rowsTemplate('4')
        .columnsGap(20)
        .margin({ top: 10 })
        .alignSelf(ItemAlign.Center)
        .layoutDirection(GridDirection.Row)
      }
      .width('90%')
      .backgroundColor(Color.White)
      .borderRadius(5)
      .margin({ top: 20 })
      .justifyContent(FlexAlign.Start)
      .alignItems(HorizontalAlign.Start)
    }.width('100%').height('100%').id('column_main').backgroundColor('#ffe2e2e2')
  }
}
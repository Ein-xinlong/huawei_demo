import { ActionBar } from '../views/ActionBar'

@Component
export struct UtilsPage {
  aboutToAppear() {

  }
  //仅对@Entry修饰的组件生效
  onPageShow() {

  }
  //仅对@Entry修饰的组件生效
  onPageHide() {

  }
  //仅对@Entry修饰的组件生效  点击返回按键时触发
  onBackPress() {

  }

  aboutToDisappear() {

  }

  build() {
    Column() {
        Swiper() {
          Image($r('app.media.app_icon')).onClick((event)=>{

          })
          Text('1').width('100%').height('100%').textAlign(TextAlign.Center)
          Image($r('app.media.icon')).width('100%').height('100%')
          Text('2').width('100%').height('100%')
            .textAlign(TextAlign.Center)
        }
        .id('swiper_main')
        .width('90%')
        .height('160')
        .margin({ top: 10 })
        .alignRules({ left: { anchor: 'column_main', align: HorizontalAlign.Center } })
        .backgroundColor(Color.White)
        .indicatorStyle({
          size: 30, left: 0, color: Color.Black
        }).borderRadius(5)

        Column(){
           Text('小工具').margin({left:20,top:10}).fontWeight(FontWeight.Bold)
          Grid(){
            GridItem(){

            }
          }.width('100%').columnsTemplate('4').rowsTemplate('1').columnsGap(20).rowsGap(10)
        }.width('90%').backgroundColor(Color.White).borderRadius(5).margin({top:20}).justifyContent(FlexAlign.Start).alignItems(HorizontalAlign.Start)

    }.width('100%').height('100%').id('column_main').backgroundColor('#ffe2e2e2')
  }
}
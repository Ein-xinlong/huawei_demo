import router from '@ohos.router'
import {ActionBar} from '../views/ActionBar';
import IndexVM from '../viewmodel/IndexVM';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  private input:string =''
  private passWord:string =''
  build() {
    Column() {
      ActionBar({title:"登录页"}).width('100%').height('10%')
      Image($r('app.media.icon'))
        .width(100)
        .height(100)
        .margin({top:50,bottom:10})
      Text("登录页面")
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
      Text("登录体验更多功能")
        .fontSize(15)
        .margin({top:10,bottom:10})
      TextInput({placeholder :$r('app.string.EntryAbility_login_hite')})
        .maxLength(11)
        .type(InputType.Number)
        .textInputStyle()
        .onChange((value:String)=>{
          this.input=value.toString()
          console.log(value.toString())
        })
      TextInput({placeholder :$r('app.string.EntryAbillity_login_hite_password')})
        .type(InputType.Password)
        .width('100%')
        .textInputStyle()
        .onChange((value:String)=>{
          this.passWord=value.toString()
          console.log(value.toString())
        })
      Button($r('app.string.button_login_text'),{type:ButtonType.Capsule})
        .margin({top:20})
        .width('100%')
        .padding(10)
        .onClick(()=>{
          IndexVM.jump2Main(this.input,this.passWord)
          console.log(this.input+    this.passWord)
        })
      Row(){
        Text("注册")
          .registerTextStyle()
        Text("不登录，先看看")
          .registerTextStyle()
      }.width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({top:10,left:10,right:10})

    }
    .width('100%')
  }
  aboutToAppear(){

  }
  onPageShow(){

  }
}

@Extend(TextInput)
function textInputStyle(){
  .placeholderColor($r('app.color.placeholder_color'))
  .height(30)
  .fontSize(14)
  .backgroundColor($r('app.color.background'))
  .width('100%')
  .padding({left:12,right:12})
  .height(40)
  .margin({top:10})
}
@Extend(Text)
function registerTextStyle(){
  .fontColor($r('app.color.login_blue_text_color'))
  .fontSize(14)
  .margin({left:10,right:10})
}
@Extend(Line)
function lineStyle() {
  .width('100%')
  .height('100%')
  .backgroundColor($r('app.color.line_color'))
}


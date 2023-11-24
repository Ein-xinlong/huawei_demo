import router from '@ohos.router';

class IndexVM{
  jump2Main(username:string,password:string){
    if (username == "" || username == null ||password == ""||password == null ) {
        console.log("账号或密码为空")
        return
    }
    router.pushUrl({url:'pages/MainPage'}).then(()=>{
      console.info('Succeeded in jumping to the main page.')
    }).catch((err)=>{
      console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
    })
  }
}
let indexVM = new IndexVM()
export default indexVM as IndexVM;
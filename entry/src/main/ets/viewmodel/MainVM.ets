import { SmallUtil } from '../entryability/bean/SmallUtil'
class MainVM{
    getSmallUtils(): Array<SmallUtil>{
      let utils = Array<SmallUtil>()
      utils.push(new SmallUtil().put($r('app.media.icon_news'),'haha'))
      utils.push(new SmallUtil().put($r('app.media.icon_tool'),'oooo'))
      return utils
    }
}
let mainVM = new MainVM()
export default mainVM as MainVM;
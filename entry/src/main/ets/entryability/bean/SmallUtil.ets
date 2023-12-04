export class SmallUtil{
   img:Resource
  content:string
  put(img:Resource,content:string):SmallUtil{
    this.img = img
    this.content = content
    return this
  }
}
export default class AppCtrl {
  constructor() {
    this.isMobile = /Mobi/.test(navigator.userAgent)
  }

  closeFlashAlert() {
    currentElement().parentElement.remove()
  }
}

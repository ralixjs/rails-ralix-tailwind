export default class AppCtrl {
  constructor() {
    this.isMobile = /Mobi/.test(navigator.userAgent)
  }

  toggleMenu() {
    toggleClass('.mobile-menu', 'hidden')
  }

  closeFlashAlert() {
    currentElement().parentElement.remove()
  }
}

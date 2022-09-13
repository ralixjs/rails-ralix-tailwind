import tippy from 'tippy.js'

export default class Tooltip {
  static onload() {
    tippy('[data-tippy-content]', {
      allowHTML: true,
      arrow: false
    })
  }
}

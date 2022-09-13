import MicroModal from 'micromodal'

export default class RemoteModal {
  static onload() {
    findAll('[data-modal-url]').forEach(el => {
      on(el, 'click', () => {
        this.show(data(el))
      })
    })
  }

  static show(data) {
    get(data.modalUrl).then(content => {
      insertHTML('#remote-modal .modal-title', data.modalTitle || '')
      insertHTML('#remote-modal main', content)

      MicroModal.show('remote-modal', {
        disableScroll: true
      })
    })
  }
}

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ['items', 'form']
  static values = {
    position: String
  }
  connect() {
    console.log(this.itemsTarget)
    console.log(this.formTarget) //=> singular is querySelector
    console.log(this.formTargets) //=> singular is querySelectorAll
    console.log(this.positionValue)
  }

  send(event) {
    event.preventDefault()

    // console.log("TODO: send request in AJAX")
    fetch(this.formTarget.action, {
      method: 'POST',
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        // console.log(data.inser);
        if (data.inserted_item) {
          this.itemsTarget.insertAdjacentHTML(this.positionValue, data.inserted_item)
        }
        this.formTarget.outerHTML = data.form
        // form: '<form data-insert-in-list-target="form" data-actio…ary" data-disable-with="Create Review" />\n</form>',
        // inserted_item: '<p>Check the json in the console</p>\n'}
      })
  }
}

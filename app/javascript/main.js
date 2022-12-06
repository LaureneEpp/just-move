// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

let popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
let popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
  return new bootstrap.Popover(popoverTriggerEl)
})
// import "trix"
// import "@rails/actiontext"

import magicAdd from './magicAdd.js'
// import toggleLikeButton from './toggle_favorite.js'

// let a = magicAdd(2, 4);

// console.log(`From mainjs, magicAdd result is ${a}`)

console.log('hello france ')

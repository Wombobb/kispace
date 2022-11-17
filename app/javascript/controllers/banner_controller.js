import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="banner"
export default class extends Controller {
  connect() {
    var images = [
      'https://images.unsplash.com/photo-1521334726092-b509a19597c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2101&q=80',
      'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
      'https://images.unsplash.com/photo-1600349780687-6d9843b27916?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80',
      'https://images.unsplash.comhttps://images.unsplash.com/photo-1521543387600-c745f8e83d77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80/photo-1521543387600-c745f8e83d77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'
    ];


      var container = this.element
      setInterval(function() {
        container.style.setProperty("background-image", `url( ${images[1]})`);
        images.push(images.shift());
      }, 2000);


  }
}

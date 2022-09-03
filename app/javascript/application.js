// Dependencies
import { RalixApp } from 'ralix'
import "@hotwired/turbo-rails"

// Controllers
import AppCtrl      from './controllers/app'
import ArticlesCtrl from './controllers/articles'

const App = new RalixApp({
  routes: {
    '/articles$': ArticlesCtrl,
    '/.*': AppCtrl
  }
})

App.start()

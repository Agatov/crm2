@CrmApp.module "LeadsApp", (LeadsApp, App, Backbone, Marionette, $, _) ->

  API =

    listLeads: ->
      LeadsApp.List.Controller.Show()


  class LeadsApp.Router extends Marionette.AppRouter
    appRoutes:
      'leads': 'listLeads'


  App.addInitializer ->
    new LeadsApp.Router
      controller: API

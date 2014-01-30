@CrmApp.module "LeadsApp.List", (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    Show: ->
      console.log 'i am here...'

      leadsView = new List.Leads
        collection: null

      App.mainRegion.show leadsView

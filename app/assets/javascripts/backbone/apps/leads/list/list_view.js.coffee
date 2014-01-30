@CrmApp.module "LeadsApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Lead extends Marionette.ItemView

  class List.LeadsEmpty extends Marionette.ItemView
    template: 'leads/list/templates/no_leads'

  class List.Leads extends Marionette.CollectionView
    itemView: List.Lead
    emptyView: List.LeadsEmpty
    className: 'leads'

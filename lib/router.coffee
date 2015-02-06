Router.configure
  layoutTemplate: 'layout'
  notFoundTemplate: '404'

Router.route "/",
  name: "home",
  template: "home"
  data: ->
    sectionTitle: 'home',


## CONTROLLERS ##
sampleController = RouteController.extend
  yieldTemplates:
    'sampleNav':
      to: 'sectionNav'

## MAP ##
Router.map ->

  ## Sample ##
  @route 'sample',
    path: '/sample',
    controller: sampleController
    data: ->
      sectionTitle: 'Sample',
      pageTitle: 'Sample Route'
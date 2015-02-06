Template.layout.events
	"click a[data-panel-toggle]": (e) ->
		e.preventDefault()
		e.stopPropagation()
		panel = $(e.target).data('panel-toggle')
		$('body').toggleClass(panel + '--opened')

	"click .signout": (e) ->
		e.preventDefault()
		e.stopPropagation()
		Meteor.logout()

	"submit #signInForm": (e) ->
		e.preventDefault()
		e.stopPropagation()
		Meteor.loginWithPassword(e.currentTarget.elements.email.value, e.currentTarget.elements.password.value)

	$(document).click (e) ->
		if $(e.target).is('a[data-modal]')
			# Event for injecting modal onto a page and making it active
			e.preventDefault()
			e.stopPropagation()
			modal = $(e.target).data('modal')
			Blaze.render(Template[modal], document.body)
			Meteor.setTimeout ->
				showModal modal
			, 50

# Function for making a modal active and binding modal removal to close
showModal = (modal) ->
	$('#' + modal).addClass('modal--active').on 'click', '.modal--close', ->
		$(this).parents('.modal').remove()
add_image_handlers = ->
  thumbnails = ($ '#taxon-images ul.thumbnails')
  ($ '#taxon-main-image').data 'selectedThumb', ($ '#taxon-main-image img').attr('src')
  thumbnails.find('li').eq(0).addClass 'selected'
  thumbnails.find('a').on 'click', (event) ->
    ($ '#taxon-main-image').data 'selectedThumb', ($ event.currentTarget).attr('href')
    ($ '#taxon-main-image').data 'selectedThumbId', ($ event.currentTarget).parent().attr('id')
    ($ this).mouseout ->
      thumbnails.find('li').removeClass 'selected'
      ($ event.currentTarget).parent('li').addClass 'selected'
    false

  thumbnails.find('li').on 'mouseenter', (event) ->
    ($ '#taxon-main-image img').attr 'src', ($ event.currentTarget).find('a').attr('href')

  thumbnails.find('li').on 'mouseleave', (event) ->
    ($ '#taxon-main-image img').attr 'src', ($ '#taxon-main-image').data('selectedThumb')

show_variant_images = (variant_id) ->
  ($ 'li.vtmb').hide()
  ($ 'li.vtmb-' + variant_id).show()
  currentThumb = ($ '#' + ($ '#taxon-main-image').data('selectedThumbId'))
  if not currentThumb.hasClass('vtmb-' + variant_id)
    thumb = ($ ($ 'ul.thumbnails li:visible.vtmb').eq(0))
    thumb = ($ ($ 'ul.thumbnails li:visible').eq(0)) unless thumb.length > 0
    newImg = thumb.find('a').attr('href')
    ($ 'ul.thumbnails li').removeClass 'selected'
    thumb.addClass 'selected'
    ($ '#taxon-main-image img').attr 'src', newImg
    ($ '#taxon-main-image').data 'selectedThumb', newImg
    ($ '#taxon-main-image').data 'selectedThumbId', thumb.attr('id')

update_variant_price = (variant) ->
  variant_price = variant.data('price')
  ($ '.price.selling').text(variant_price) if variant_price

$ ->
  add_image_handlers()
  show_variant_images ($ '#product-variants input[type="radio"]').eq(0).attr('value') if ($ '#product-variants input[type="radio"]').length > 0
  ($ '#product-variants input[type="radio"]').click (event) ->
    show_variant_images @value
    update_variant_price ($ this)

mesureWidth = (str, style) ->
  element = $("""<div style="position: absolute; #{style}">#{str}</div>""")
  element.appendTo(document.body)
  width = element.width()
  element.remove()
  return width


signiture = ({name, position, field1Label, field1, field2Label, field2, email}) ->
  return "Invalid name" unless /^[\w' -]+$/.test(name)
  height = 52
  logoSpacer = 6
  lineHeight = 13
  fieldTagWidth = 13
  spacerWidth = 3
  spacerExtra = 5

  mmx = 'METAMARKETS'

  nameWidth = mesureWidth(name,         'font-size:11px; font-weight:bold;   font-family:Helvetica,Arial,Sans-Serif') + 5
  positionWidth = mesureWidth(position, 'font-size:11px; font-weight:normal; font-family:Helvetica,Arial,Sans-Serif')
  metamarketsWidth = mesureWidth(mmx,   'font-size:11px; font-weight:normal; font-family:Helvetica,Arial,Sans-Serif')
  field1Width = mesureWidth(field1,     'font-size:11px; font-weight:normal; font-family:Helvetica,Arial,Sans-Serif') + 2
  field2Width = mesureWidth(field2,     'font-size:11px; font-weight:normal; font-family:Helvetica,Arial,Sans-Serif') + 2
  emailWidth = mesureWidth(email,       'font-size:11px; font-weight:normal; font-family:Helvetica,Arial,Sans-Serif') + 5

  line1Width = nameWidth
  line2Width = positionWidth + spacerExtra + spacerWidth + spacerExtra + metamarketsWidth
  line3Width = fieldTagWidth + field1Width + spacerExtra + spacerWidth + spacerExtra + fieldTagWidth + field2Width
  line4Width = emailWidth

  infoWidth = Math.max(line1Width, line2Width, line3Width, line4Width)

  table = ({width, height, html, style}) ->
    style or= ''
    return """
      <table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;#{style}">#{html.trim()}</table>
      """

  tr = ({height, html}) ->
    return """
      <tr height=#{height}>#{html.trim()}</tr>
      """

  td = ({width, html, style}) ->
    style or= ''
    return """
      <td width=#{width}; style="padding:0;#{style}">#{html.trim()}</td>
      """

  tableAndRow = ({width, height, html, style}) ->
    return table({
      width
      height
      html: tr({
        height
        html
      })
      style
    })

  tdSpecer = td({
    width: spacerWidth + spacerExtra
    html: '|'
    style: 'color:#F95F39;'
  })

  signitureStr =
    "<br/><br/>" +
    tableAndRow({
      width: height + logoSpacer + infoWidth
      height: height
      html:
        td({
          width: height
          html: """<a href="http://www.metamarkets.com" target="_blank">#{logo(height)}</a>"""
        }) +
        td({
          width: logoSpacer
          html: '&nbsp;'
        }) +
        td({
          width: infoWidth
          html:
            tableAndRow({
              width: line1Width
              height: lineHeight
              style: 'font-weight:bold;font-size:11px;font-family:Helvetica,Arial,Sans-Serif;white-space:nowrap'
              html:
                td({
                  width: nameWidth
                  html: name
                  style: 'color:#333333;font-weight:bold;'
                })
            }) +
            tableAndRow({
              width: line2Width
              height: lineHeight
              style: 'font-size:11px;font-family:Helvetica,Arial,Sans-Serif;white-space:nowrap'
              html:
                td({
                  width: positionWidth + spacerExtra
                  html: position
                  style: 'color:#666666;'
                }) +
                tdSpecer +
                td({
                  width: metamarketsWidth
                  html: """<a style="color:#999999; text-decoration:none" href="http://www.metamarkets.com">#{mmx}</a>"""
                })
            }) +
            tableAndRow({
              width: line3Width
              height: lineHeight
              style: 'font-size:11px;font-family:Helvetica,Arial,Sans-Serif;white-space:nowrap'
              html:
                td({
                  width: fieldTagWidth
                  html: field1Label
                  style: 'color:#000000;font-weight:bold;'
                }) +
                td({
                  width: field1Width + spacerExtra
                  html: """<a style="color:#3e2105; text-decoration:none" href="tel:#{field1}">#{field1}</a>"""
                }) +
                tdSpecer +
                td({
                  width: fieldTagWidth
                  html: field2Label
                  style: 'color:#000000;font-weight:bold;'
                }) +
                td({
                  width: field2Width + spacerExtra
                  html: """<a style="color:#3e2105; text-decoration:none" href="tel:#{field2}">#{field2}</a>"""
                })
            }) +
            tableAndRow({
              width: line4Width
              height: lineHeight
              style: 'font-size:11px;font-family:Helvetica,Arial,Sans-Serif;white-space:nowrap'
              html:
                td({
                  width: emailWidth
                  html: """<a style="color:#1c7bc3; text-decoration:none;" href="mailto:#{email}">#{email}</a>"""
                })
            })
        })
    })

  signitureStr = signitureStr.replace(/>\s+</g, '><')
  console.log signitureStr.length
  return "Too long" unless signitureStr.length < 10000
  return signitureStr

mesureWidth = (str, style) ->
  element = $("""<div style="position: absolute; #{style}">#{str}</div>""")
  element.appendTo(document.body)
  width = element.width()
  element.remove()
  return width


signiture = ({name, position, phone1, phone2, email}) ->
  return "Invalid name" unless /^[\w' -]+$/.test(name)
  height = 52
  logoSpacer = 6
  lineHeight = 13
  phoneTagWidth = 13
  spacerWidth = 3
  spacerExtra = 5

  mmx = 'METAMARKETS'

  nameWidth = mesureWidth(name,         'font-size:11px; font-weight:bold;   font-family:Helvetica,Arial,Sans-Serif') + 5
  positionWidth = mesureWidth(position, 'font-size:11px; font-weight:normal; font-family:Helvetica,Arial,Sans-Serif')
  metamarketsWidth = mesureWidth(mmx,   'font-size:11px; font-weight:normal; font-family:Helvetica,Arial,Sans-Serif')
  phone1Width = mesureWidth(phone1,     'font-size:11px; font-weight:normal; font-family:Helvetica,Arial,Sans-Serif') + 2
  phone2Width = mesureWidth(phone2,     'font-size:11px; font-weight:normal; font-family:Helvetica,Arial,Sans-Serif') + 2
  emailWidth = mesureWidth(email,       'font-size:11px; font-weight:normal; font-family:Helvetica,Arial,Sans-Serif') + 5

  line1Width = nameWidth
  line2Width = positionWidth + spacerExtra + spacerWidth + spacerExtra + metamarketsWidth
  line3Width = phoneTagWidth + phone1Width + spacerExtra + spacerWidth + spacerExtra + phoneTagWidth + phone2Width
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
          html: ''
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
                  width: phoneTagWidth
                  html: 'm'
                  style: 'color:#000000;font-weight:bold;'
                }) +
                td({
                  width: phone1Width + spacerExtra
                  html: """<a style="color:#3e2105; text-decoration:none" href="tel:#{phone1}">#{phone1}</a>"""
                }) +
                tdSpecer +
                td({
                  width: phoneTagWidth
                  html: 'o'
                  style: 'color:#000000;font-weight:bold;'
                }) +
                td({
                  width: phone2Width + spacerExtra
                  html: """<a style="color:#3e2105; text-decoration:none" href="tel:#{phone2}">#{phone2}</a>"""
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

    # """
    # <table cellspacing="0" cellpadding="0" border="0" style="height:#{height}px; width:#{height + logoSpacer + infoWidth}px" height:#{height} width:#{height + logoSpacer + infoWidth}>
    #   <tr style="height:#{height}px;>
    #     <td align="left" style="width:#{height + logoSpacer}px">
    #       <a href="http://www.metamarkets.com" target="_blank">#{logo(height)}</a>
    #     </td>
    #     <td align="left" style="width:#{infoWidth}px" width:#{infoWidth}>

    #       <table cellspacing="0" cellpadding="0" border="0" width=#{line1Width} height=#{lineHeight} style="border-collapse:collapse; table-layout:fixed; width:#{line1Width}px; height:#{lineHeight}px; font-weight:bold; font-size:11px; font-family:Helvetica,Arial,Sans-Serif; white-space:nowrap"><tr>
    #         <td align="left" width=#{nameWidth} style="width:#{nameWidth}px; padding:0; color:#000000; font-weight:bold;">#{name}</td>
    #       </tr></table>

    #       <table cellspacing="0" cellpadding="0" border="0" width=#{line2Width} height=#{lineHeight} style="border-collapse:collapse; table-layout:fixed; width:#{line2Width}px; height:#{lineHeight}px; font-weight:normal; font-size:11px; font-family:Helvetica,Arial,Sans-Serif; white-space:nowrap"><tr>
    #         <td align="left" width=#{positionWidth + spacerExtra} style="width:#{positionWidth + spacerExtra}px; padding:0; color:#666666;">#{position}</td>
    #         <td align="left" width=#{spacerWidth + spacerExtra} style="width:#{spacerWidth + spacerExtra}px; padding:0; color:#F95F39;">|</td>
    #         <td align="left" width=#{metamarketsWidth} style="width:#{metamarketsWidth}px; padding:0"><a style="color:#999999; text-decoration:none" href="http://www.metamarkets.com">#{mmx}</a></td>
    #       </tr></table>

    #       <table cellspacing="0" cellpadding="0" border="0" width=#{line3Width} height=#{lineHeight} style="border-collapse:collapse; table-layout:fixed; width:#{line3Width}px; height:#{lineHeight}px; font-weight:normal; font-size:11px; font-family:Helvetica,Arial,Sans-Serif; white-space:nowrap"><tr>
    #         <td align="left" width=#{phoneTagWidth} style="width:#{phoneTagWidth}px; padding:0; color:#000000;font-weight:bold;">m</td>
    #         <td align="left" width=#{phone1Width + spacerExtra} style="width:#{phone1Width + spacerExtra}px; padding:0"><a style="color:#3e2105; text-decoration:none" href="tel:#{phone1}">#{phone1}</a></td>
    #         <td align="left" width=#{spacerWidth + spacerExtra} style="width:#{spacerWidth + spacerExtra}px; padding:0; color:#F95F39;">|</td>
    #         <td align="left" width=#{phoneTagWidth} style="width:#{phoneTagWidth}px; padding:0; color:#000000;font-weight:bold;">o</td>
    #         <td align="left" width=#{phone2Width} style="width:#{phone2Width}px; padding:0"><a style="color:#3e2105; text-decoration:none" href="tel:#{phone2}">#{phone2}</a></td>
    #       </tr></table>

    #       <table cellspacing="0" cellpadding="0" border="0" width=#{line4Width} height=#{lineHeight} style="border-collapse:collapse; table-layout:fixed; width:#{line4Width}px; height:#{lineHeight}px; font-weight:normal; font-size:11px; font-family:Helvetica,Arial,Sans-Serif; white-space:nowrap"><tr>
    #         <td align="left" width=#{emailWidth} style="width:#{emailWidth}px; padding:0"><a style="color:#1c7bc3; text-decoration:none;" href="mailto:#{email}">#{email}</a></td>
    #       </tr></table>

    #     </td>
    #   </tr>
    # </table>
    # """

  signitureStr = signitureStr.replace(/>\s+</g, '><')
  console.log signitureStr.length
  return "Too long" unless signitureStr.length < 10000
  return signitureStr

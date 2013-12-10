logo = (size) ->
  size = Math.max(Math.floor(size), 7)
  thickness = Math.max(Math.ceil(size / 8), 1)
  spacing = Math.max(Math.floor(size / 8), 1)
  gap = size - 2 * (thickness + spacing + thickness)
  if gap < 1 and thickness > 1
    thickness -= 1 # Correct for tiny sizes
    gap = size - 2 * (thickness + spacing + thickness)

  td = ({width, height, color}) ->
    if color
      return """<td width=#{width} bgcolor="#{color}" style="padding:0;font-size:1px;line-height:1px;">&nbsp;</td>"""
    else
      return """<td width=#{width} style="padding:0;font-size:1px;line-height:1px;">&nbsp;</td>"""

  html = """
    <table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;">
      <tr height=#{thickness}>
        #{td({width:thickness, height:thickness, color: "#52B6E0"})}
        #{td({width:spacing, height:thickness, color: "#52B6E0"})}
        #{td({width:thickness, height:thickness, color: "#52B6E0"})}
        #{td({width:gap, height:thickness, color: "#52B6E0"})}
        #{td({width:thickness, height:thickness, color: "#52B6E0"})}
        #{td({width:spacing, height:thickness})}
        #{td({width:thickness, height:thickness})}
      </tr>
      <tr height=#{spacing}>
        #{td({width:thickness, height:spacing, color: "#52B6E0"})}
        #{td({width:spacing, height:spacing})}
        #{td({width:thickness, height:spacing})}
        #{td({width:gap, height:spacing})}
        #{td({width:thickness, height:spacing, color: "#52B6E0"})}
        #{td({width:spacing, height:spacing})}
        #{td({width:thickness, height:spacing})}
      </tr>
      <tr height=#{thickness}>
        #{td({width:thickness, height:thickness, color: "#52B6E0"})}
        #{td({width:spacing, height:thickness})}
        #{td({width:thickness, height:thickness, color: "#F95F39"})}
        #{td({width:gap, height:thickness, color: "#F95F39"})}
        #{td({width:thickness, height:thickness, color: "#14213E"})}
        #{td({width:spacing, height:thickness, color: "#F95F39"})}
        #{td({width:thickness, height:thickness, color: "#F95F39"})}
      </tr>
      <tr height=#{gap}>
        #{td({width:thickness, height:gap, color: "#52B6E0"})}
        #{td({width:spacing, height:gap})}
        #{td({width:thickness, height:gap, color: "#F95F39"})}
        #{td({width:gap, height:gap})}
        #{td({width:thickness, height:gap, color: "#52B6E0"})}
        #{td({width:spacing, height:gap})}
        #{td({width:thickness, height:gap, color: "#F95F39"})}
      </tr>
      <tr height=#{thickness}>
        #{td({width:thickness, height:thickness, color: "#52B6E0"})}
        #{td({width:spacing, height:thickness, color: "#52B6E0"})}
        #{td({width:thickness, height:thickness, color: "#14213E"})}
        #{td({width:gap, height:thickness, color: "#52B6E0"})}
        #{td({width:thickness, height:thickness, color: "#52B6E0"})}
        #{td({width:spacing, height:thickness})}
        #{td({width:thickness, height:thickness, color: "#F95F39"})}
      </tr>
      <tr height=#{spacing}>
        #{td({width:thickness, height:spacing})}
        #{td({width:spacing, height:spacing})}
        #{td({width:thickness, height:spacing, color: "#F95F39"})}
        #{td({width:gap, height:spacing})}
        #{td({width:thickness, height:spacing})}
        #{td({width:spacing, height:spacing})}
        #{td({width:thickness, height:spacing, color: "#F95F39"})}
      </tr>
      <tr height=#{thickness}>
        #{td({width:thickness, height:thickness})}
        #{td({width:spacing, height:thickness})}
        #{td({width:thickness, height:thickness, color: "#F95F39"})}
        #{td({width:gap, height:thickness, color: "#F95F39"})}
        #{td({width:thickness, height:thickness, color: "#F95F39"})}
        #{td({width:spacing, height:thickness, color: "#F95F39"})}
        #{td({width:thickness, height:thickness, color: "#F95F39"})}
      </tr>
    </table>
    """
  html = html.replace(/>\s+</g, '><')
  return html

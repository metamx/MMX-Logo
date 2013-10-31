logo = (size) ->
  size = Math.max(Math.floor(size), 7)
  thickness = Math.max(Math.ceil(size / 8), 1)
  spacing = Math.max(Math.floor(size / 8), 1)
  gap = size - 2 * (thickness + spacing + thickness)
  if gap < 1 and thickness > 1
    thickness -= 1 # Correct for tiny sizes
    gap = size - 2 * (thickness + spacing + thickness)
  html = """
    <table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse; table-layout:fixed; width:#{size}px; height:#{size}px;">
      <tr style="height:#{thickness}px">
        <td style="padding:0; width:#{thickness}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{spacing}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{thickness}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{gap}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{thickness}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{spacing}px;"></td>
        <td style="padding:0; width:#{thickness}px;"></td>
      </tr>
      <tr style="height:#{spacing}px">
        <td style="padding:0; width:#{thickness}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{spacing}px;"></td>
        <td style="padding:0; width:#{thickness}px;"></td>
        <td style="padding:0; width:#{gap}px;"></td>
        <td style="padding:0; width:#{thickness}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{spacing}px;"></td>
        <td style="padding:0; width:#{thickness}px;"></td>
      </tr>
      <tr style="height:#{thickness}px">
        <td style="padding:0; width:#{thickness}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{spacing}px;"></td>
        <td style="padding:0; width:#{thickness}px; background:#F95F39"></td>
        <td style="padding:0; width:#{gap}px; background:#F95F39"></td>
        <td style="padding:0; width:#{thickness}px; background:#14213E"></td>
        <td style="padding:0; width:#{spacing}px; background:#F95F39"></td>
        <td style="padding:0; width:#{thickness}px; background:#F95F39"></td>
      </tr>
      <tr style="height:#{gap}px">
        <td style="padding:0; width:#{thickness}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{spacing}px;"></td>
        <td style="padding:0; width:#{thickness}px; background:#F95F39"></td>
        <td style="padding:0; width:#{gap}px;"></td>
        <td style="padding:0; width:#{thickness}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{spacing}px;"></td>
        <td style="padding:0; width:#{thickness}px; background:#F95F39"></td>
      </tr>
      <tr style="height:#{thickness}px">
        <td style="padding:0; width:#{thickness}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{spacing}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{thickness}px; background:#14213E"></td>
        <td style="padding:0; width:#{gap}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{thickness}px; background:#52B6E0"></td>
        <td style="padding:0; width:#{spacing}px;"></td>
        <td style="padding:0; width:#{thickness}px; background:#F95F39"></td>
      </tr>
      <tr style="height:#{spacing}px">
        <td style="padding:0; width:#{thickness}px;"></td>
        <td style="padding:0; width:#{spacing}px;"></td>
        <td style="padding:0; width:#{thickness}px; background:#F95F39"></td>
        <td style="padding:0; width:#{gap}px;"></td>
        <td style="padding:0; width:#{thickness}px;"></td>
        <td style="padding:0; width:#{spacing}px;"></td>
        <td style="padding:0; width:#{thickness}px; background:#F95F39"></td>
      </tr>
      <tr style="height:#{thickness}px">
        <td style="padding:0; width:#{thickness}px;"></td>
        <td style="padding:0; width:#{spacing}px;"></td>
        <td style="padding:0; width:#{thickness}px; background:#F95F39"></td>
        <td style="padding:0; width:#{gap}px; background:#F95F39"></td>
        <td style="padding:0; width:#{thickness}px; background:#F95F39"></td>
        <td style="padding:0; width:#{spacing}px; background:#F95F39"></td>
        <td style="padding:0; width:#{thickness}px; background:#F95F39"></td>
      </tr>
    </table>
    """
  html = html.replace(/>\s+</g, '><')
  return html

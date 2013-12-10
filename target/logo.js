// Generated by CoffeeScript 1.6.2
var logo;

logo = function(size) {
  var gap, html, spacing, td, thickness;

  size = Math.max(Math.floor(size), 7);
  thickness = Math.max(Math.ceil(size / 8), 1);
  spacing = Math.max(Math.floor(size / 8), 1);
  gap = size - 2 * (thickness + spacing + thickness);
  if (gap < 1 && thickness > 1) {
    thickness -= 1;
    gap = size - 2 * (thickness + spacing + thickness);
  }
  td = function(_arg) {
    var color, height, width;

    width = _arg.width, height = _arg.height, color = _arg.color;
    if (color) {
      return "<td width=" + width + " bgcolor=\"" + color + "\" style=\"padding:0;font-size:1px;line-height:1px;\">&nbsp;</td>";
    } else {
      return "<td width=" + width + " style=\"padding:0;font-size:1px;line-height:1px;\">&nbsp;</td>";
    }
  };
  html = "<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"border-collapse:collapse;\">\n  <tr height=" + thickness + ">\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: spacing,
    height: thickness,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: gap,
    height: thickness,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: spacing,
    height: thickness
  })) + "\n    " + (td({
    width: thickness,
    height: thickness
  })) + "\n  </tr>\n  <tr height=" + spacing + ">\n    " + (td({
    width: thickness,
    height: spacing,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: spacing,
    height: spacing
  })) + "\n    " + (td({
    width: thickness,
    height: spacing
  })) + "\n    " + (td({
    width: gap,
    height: spacing
  })) + "\n    " + (td({
    width: thickness,
    height: spacing,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: spacing,
    height: spacing
  })) + "\n    " + (td({
    width: thickness,
    height: spacing
  })) + "\n  </tr>\n  <tr height=" + thickness + ">\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: spacing,
    height: thickness
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#F95F39"
  })) + "\n    " + (td({
    width: gap,
    height: thickness,
    color: "#F95F39"
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#14213E"
  })) + "\n    " + (td({
    width: spacing,
    height: thickness,
    color: "#F95F39"
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#F95F39"
  })) + "\n  </tr>\n  <tr height=" + gap + ">\n    " + (td({
    width: thickness,
    height: gap,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: spacing,
    height: gap
  })) + "\n    " + (td({
    width: thickness,
    height: gap,
    color: "#F95F39"
  })) + "\n    " + (td({
    width: gap,
    height: gap
  })) + "\n    " + (td({
    width: thickness,
    height: gap,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: spacing,
    height: gap
  })) + "\n    " + (td({
    width: thickness,
    height: gap,
    color: "#F95F39"
  })) + "\n  </tr>\n  <tr height=" + thickness + ">\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: spacing,
    height: thickness,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#14213E"
  })) + "\n    " + (td({
    width: gap,
    height: thickness,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#52B6E0"
  })) + "\n    " + (td({
    width: spacing,
    height: thickness
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#F95F39"
  })) + "\n  </tr>\n  <tr height=" + spacing + ">\n    " + (td({
    width: thickness,
    height: spacing
  })) + "\n    " + (td({
    width: spacing,
    height: spacing
  })) + "\n    " + (td({
    width: thickness,
    height: spacing,
    color: "#F95F39"
  })) + "\n    " + (td({
    width: gap,
    height: spacing
  })) + "\n    " + (td({
    width: thickness,
    height: spacing
  })) + "\n    " + (td({
    width: spacing,
    height: spacing
  })) + "\n    " + (td({
    width: thickness,
    height: spacing,
    color: "#F95F39"
  })) + "\n  </tr>\n  <tr height=" + thickness + ">\n    " + (td({
    width: thickness,
    height: thickness
  })) + "\n    " + (td({
    width: spacing,
    height: thickness
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#F95F39"
  })) + "\n    " + (td({
    width: gap,
    height: thickness,
    color: "#F95F39"
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#F95F39"
  })) + "\n    " + (td({
    width: spacing,
    height: thickness,
    color: "#F95F39"
  })) + "\n    " + (td({
    width: thickness,
    height: thickness,
    color: "#F95F39"
  })) + "\n  </tr>\n</table>";
  html = html.replace(/>\s+</g, '><');
  return html;
};

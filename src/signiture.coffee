signiture = ({name, position, phone1, phone2, email}) ->
  return "Invalid name" unless /^[\w' -]+$/.test(name)
  signitureStr = """
    <br/>
    <br/>
    <table cellspacing="0" cellpadding="0" border="0" style="height:50px; width:374px"><tr>
      <td style="height: 53px; width:59px">
        <a href="http://www.metamarkets.com" target="_blank" >
          #{logo(53)}
        </a>
      </td>
      <td style="width:320px">

        <table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse; table-layout:fixed; font-size:11px; font-weight:normal; line-height:13px; font-family:Helvetica,Arial,Sans-Serif"><tr>
          <td style="padding:0; color:#000000;font-weight:bold;">#{name}</td>
        </tr></table>

        <table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse; table-layout:fixed; font-size:11px; font-weight:normal; line-height:13px; font-family:Helvetica,Arial,Sans-Serif"><tr>
          <td style="padding:0; color:#666666;">#{position}</td>
          <td style="padding:0; color:#F95F39;">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
          <td style="padding:0"><a style="color:#999999; text-decoration:none" href="http://www.metamarkets.com">METAMARKETS</a></td>
        </tr></table>

        <table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse; table-layout:fixed; font-size:11px; font-weight:normal; line-height:13px; font-family:Helvetica,Arial,Sans-Serif"><tr>
          <td style="padding:0; color:#000000;font-weight:bold;">m&nbsp;</td>
          <td style="padding:0"><a style="color:#3e2105; text-decoration:none" href="tel:#{phone1}">#{phone1}</a></td>
          <td style="padding:0; color:#F95F39;">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
          <td style="padding:0; color:#000000;font-weight:bold;">o&nbsp;</td>
          <td style="padding:0"><a style="color:#3e2105; text-decoration:none" href="tel:#{phone2}">#{phone2}</a></td>
        </tr></table>

        <table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse; table-layout:fixed; font-size:11px; font-weight:normal; line-height:13px; font-family:Helvetica,Arial,Sans-Serif"><tr>
          <td style="padding:0"><a style="color:#1c7bc3; text-decoration:none;" href="mailto:#{email}">#{email}</a></td>
        </tr></table>

      </td>
    </tr></table>
    """

  return "Too long" unless signitureStr.length < 10000
  return signitureStr

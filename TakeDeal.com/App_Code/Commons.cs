using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Commons
/// </summary>
public class Commons
{
    public Commons()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static void MsgBox(String strMsg)
    {
        HttpContext.Current.Response.Write("<Script>alert('" + strMsg + "')</Script>");
    }

}
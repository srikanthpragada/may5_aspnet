﻿<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        Application["sessioncount"] = 0;

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
       Application["sessioncount"] = Int32.Parse(Application["sessioncount"].ToString()) + 1;
    }

    void Session_End(object sender, EventArgs e) 
    {
       Application["sessioncount"] = Int32.Parse(Application["sessioncount"].ToString()) - 1;
    }
       
</script>

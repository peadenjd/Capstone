﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CyberDaySystem
{ 
  public class UploadFile
  {
    public string fName;
    public string fLocation;

    public string FileName
    {
        get { return fName; }
        set { fName = value; }
    }
    public string FileLocation
    {
        get { return fLocation; }
        set { fLocation = value; }
    }

    public UploadFile(string fName, string fLocation)
    {

        FileName = fName;
        FileLocation = fLocation;
    }
}
}
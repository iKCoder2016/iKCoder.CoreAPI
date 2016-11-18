﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using iKCoder_Platform_SDK_Kit;
using System.Xml;

/// <summary>
/// class_CommonLogic 的摘要说明
/// </summary>
public class class_CommonLogic
{

    public const string Const_DESKey = "AACTTNLG";

    public const string Const_PlatformDBSymbol = "PlatformAPIDatabase";
    public const string Const_OperationQueryString = "AllowPlatformOperation";

    public class_Base_Config Object_BaseConfig
    {
        set;
        get;
    }

    public class_Data_SqlConnectionHelper Object_SqlConnectionHelper
    {
        set;
        get;
    }

    public class_Security_DES Object_DES
    {
        set;
        get;
    }

    public string dbServer
    {
        set;
        get;
    }

    public string dbuid
    {
        set;
        get;
    }

    public string dbpwd
    {
        set;
        get;
    }

    public string dbdata
    {
        set;
        get;
    }

    public XmlNodeList productBenchmarkNodes
    {
        set;
        get;
    }
    

    public bool InitServices(string rootPath)
    {
        Object_BaseConfig = new class_Base_Config();        
        if(!Object_BaseConfig.DoOpen(rootPath + "\\" + "normaldata.xml"))
            return false;
        XmlNode platformDBConfig = Object_BaseConfig.GetSessionNode("platformDBConfig");
        this.dbServer = Object_BaseConfig.GetAttrValue(platformDBConfig, "dbserver", false, Const_DESKey);
        this.dbuid = Object_BaseConfig.GetAttrValue(platformDBConfig, "uidname", false, Const_DESKey);
        this.dbpwd = Object_BaseConfig.GetAttrValue(platformDBConfig, "password", false, Const_DESKey);
        this.dbdata = Object_BaseConfig.GetAttrValue(platformDBConfig, "db", false, Const_DESKey);
        this.productBenchmarkNodes = Object_BaseConfig.GetItemNodes("regproduct");
        return true;
    }    

    public bool ConnectToDatabase()
    {
        Object_SqlConnectionHelper = new class_Data_SqlConnectionHelper();
        if (!Object_SqlConnectionHelper.Set_NewConnectionItem(Const_PlatformDBSymbol, this.dbServer, dbuid, dbpwd, dbdata)) 
            return false;
        return true;
    }

    public void CloseDBConnection()
    {
        Object_SqlConnectionHelper.Action_CloseAllActionConnection();
    }    

	public class_CommonLogic()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
}
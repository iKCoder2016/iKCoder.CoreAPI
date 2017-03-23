﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iKCoder_Platform_SDK_Kit;
using System.Data;
using System.Xml;


public partial class Data_api_GetCalcDataPonit : class_WebClass_WA
{
    protected override void ExtenedFunction()
    {
        object_CommonLogic.ConnectToDatabase();
        object_CommonLogic.LoadStoreProcedureList();
        ISRESPONSEDOC = true;
        if (REQUESTDOCUMENT != null)
        {
            Dictionary<string, XmlDocument> dataSource_Buffer = new Dictionary<string, XmlDocument>();
            Dictionary<string, double> dataPoint_Buffer = new Dictionary<string, double>();
            XmlNode sourceNode = REQUESTDOCUMENT.SelectSingleNode("/root/source");
            foreach(XmlNode sourceItemNode in sourceNode.SelectNodes("item"))
            {

            }


            class_Data_SqlSPEntry activeSPEntry = object_CommonLogic.GetActiveSP(object_CommonLogic.dbServer, "spa_operation_data_basic");
            class_Data_SqlHelper _objectSqlHelper = new class_Data_SqlHelper();
            
            DataTable textDataTable = _objectSqlHelper.ExecuteSelectSPConditionForDT(activeSPEntry, object_CommonLogic.Object_SqlConnectionHelper, object_CommonLogic.dbServer);
            if (textDataTable != null && textDataTable.Rows.Count > 0)
            {
                string result = "";
                class_Data_SqlDataHelper.GetArrByteColumnDataToString(textDataTable.Rows[0], "data", out result);
                AddResponseMessageToResponseDOC(class_CommonDefined._Executed_Api + this.GetType().FullName, class_CommonDefined.enumExecutedCode.executed.ToString(), result, "");
            }
            else
            {
                AddErrMessageToResponseDOC(class_CommonDefined._Faild_Execute_Api + "Data_api_GetMetaText", "No data.", "");
            }
        }
        else
            AddErrMessageToResponseDOC(class_CommonDefined._Faild_Execute_Api + "Data_api_GetMetaText", "No Input.", "");
    }
}
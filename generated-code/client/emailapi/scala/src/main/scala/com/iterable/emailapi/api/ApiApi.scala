package com.iterable.emailapi.api

import com.iterable.emailapi.model.TargetEmailRequest
import com.iterable.client.ApiInvoker
import com.iterable.client.ApiException

import java.io.File

import scala.collection.mutable.HashMap

class ApiApi {
  var basePath: String = "http://localhost:9000"
  var apiInvoker = ApiInvoker
  
  def addHeader(key: String, value: String) = apiInvoker.defaultHeaders += key -> value 

  def target (body: TargetEmailRequest) = {
    // create path and map variables
    val path = "/api/email/target".replaceAll("\\{format\\}","json")
    val contentType = {
      if(body != null && body.isInstanceOf[File] )
        "multipart/form-data"
      else "application/json"
      }

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (Set(body) - null).size match {
       case 1 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    try {
      apiInvoker.invokeApi(basePath, path, "POST", queryParams.toMap, body, headerParams.toMap, contentType) match {
        case s: String =>
          case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  def blast (body: TargetEmailRequest) = {
    // create path and map variables
    val path = "/api/email/blast".replaceAll("\\{format\\}","json")
    val contentType = {
      if(body != null && body.isInstanceOf[File] )
        "multipart/form-data"
      else "application/json"
      }

    // query params
    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]

    // verify required params are set
    (Set(body) - null).size match {
       case 1 => // all required values set
       case _ => throw new Exception("missing required params")
    }
    try {
      apiInvoker.invokeApi(basePath, path, "POST", queryParams.toMap, body, headerParams.toMap, contentType) match {
        case s: String =>
          case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }
  }


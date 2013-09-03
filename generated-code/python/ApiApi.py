#!/usr/bin/env python
"""
WordAPI.py
Copyright 2012 Wordnik, Inc.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
"""
import sys
import os

from models import *


class ApiApi(object):

    def __init__(self, apiClient):
      self.apiClient = apiClient

    
    def target(self, body, **kwargs):
        """Send email to a specific email address

        Args:
            body, TargetEmailRequest: Recipient and email id (required)
            
        Returns: 
        """

        allParams = ['body']

        params = locals()
        for (key, val) in params['kwargs'].iteritems():
            if key not in allParams:
                raise TypeError("Got an unexpected keyword argument '%s' to method target" % key)
            params[key] = val
        del params['kwargs']

        resourcePath = '/api/email/target'
        resourcePath = resourcePath.replace('{format}', 'json')
        method = 'POST'

        queryParams = {}
        headerParams = {}

        postData = (params['body'] if 'body' in params else None)

        response = self.apiClient.callAPI(resourcePath, method, queryParams,
                                          postData, headerParams)

        
        
    def blast(self, body, **kwargs):
        """Send email to a list

        Args:
            body, TargetEmailRequest: Pet object that needs to be added to the store (required)
            
        Returns: 
        """

        allParams = ['body']

        params = locals()
        for (key, val) in params['kwargs'].iteritems():
            if key not in allParams:
                raise TypeError("Got an unexpected keyword argument '%s' to method blast" % key)
            params[key] = val
        del params['kwargs']

        resourcePath = '/api/email/blast'
        resourcePath = resourcePath.replace('{format}', 'json')
        method = 'POST'

        queryParams = {}
        headerParams = {}

        postData = (params['body'] if 'body' in params else None)

        response = self.apiClient.callAPI(resourcePath, method, queryParams,
                                          postData, headerParams)

        
        
    def subscribe(self, body, **kwargs):
        """Add subscribers to a list

        Args:
            body, SubscribeRequest: email list id and list of emails (required)
            
        Returns: list[espons]
        """

        allParams = ['body']

        params = locals()
        for (key, val) in params['kwargs'].iteritems():
            if key not in allParams:
                raise TypeError("Got an unexpected keyword argument '%s' to method subscribe" % key)
            params[key] = val
        del params['kwargs']

        resourcePath = '/api/lists/subscribe'
        resourcePath = resourcePath.replace('{format}', 'json')
        method = 'POST'

        queryParams = {}
        headerParams = {}

        postData = (params['body'] if 'body' in params else None)

        response = self.apiClient.callAPI(resourcePath, method, queryParams,
                                          postData, headerParams)

        if not response:
            return None

        responseObject = self.apiClient.deserialize(response, 'list[espons]')
        return responseObject
        
        
    def unsubscribe(self, body, **kwargs):
        """Remove subscribers from a list

        Args:
            body, UnsubscribeRequest: email list id and list of emails (required)
            
        Returns: list[espons]
        """

        allParams = ['body']

        params = locals()
        for (key, val) in params['kwargs'].iteritems():
            if key not in allParams:
                raise TypeError("Got an unexpected keyword argument '%s' to method unsubscribe" % key)
            params[key] = val
        del params['kwargs']

        resourcePath = '/api/lists/unsubscribe'
        resourcePath = resourcePath.replace('{format}', 'json')
        method = 'POST'

        queryParams = {}
        headerParams = {}

        postData = (params['body'] if 'body' in params else None)

        response = self.apiClient.callAPI(resourcePath, method, queryParams,
                                          postData, headerParams)

        if not response:
            return None

        responseObject = self.apiClient.deserialize(response, 'list[espons]')
        return responseObject
        
        
    



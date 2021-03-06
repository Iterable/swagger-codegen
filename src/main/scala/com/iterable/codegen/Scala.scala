package com.iterable.codegen

/**
 *  Copyright 2012 Wordnik, Inc.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

import com.wordnik.swagger.codegen.BasicScalaGenerator

object ScalaEmailApiGenerator extends BasicScalaGenerator with IterableGenerator {
  def main(args: Array[String]) = generateClient(args)

  // package for api invoker, error files
  override def invokerPackage = Some("com.iterable.api.invoker")

  // where to write generated code
  override def destinationDir = destDir("scala/src/main/scala")

  // package for models
  override def modelPackage = Some("com.iterable.api.model")

  // package for api classes
  override def apiPackage = Some("com.iterable.api.client")

  // supporting classes
  override def supportingFiles = List(
    ("apiInvoker.mustache", destinationDir + java.io.File.separator + invokerPackage.get.replace(".", java.io.File.separator) + java.io.File.separator, "ApiInvoker.scala"),
    ("pom.mustache", destDir("scala"), "pom.xml")
  )
}

package com.iterable.codegen

trait IterableGenerator {
  def destDir(language: String) = {
    "generated-code/client/iterable/" + language
  }

}

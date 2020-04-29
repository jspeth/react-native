# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

require "json"

package = JSON.parse(File.read(File.join(__dir__, ".", "package.json")))
version = package['version']

source = { :git => 'https://github.com/jspeth/react-native.git' }
source[:branch] = 'jspeth/publish-test'

Pod::Spec.new do |s|
  s.name                   = "SQReactNative"
  s.version                = version
  s.summary                = "-"  # TODO
  s.homepage               = "http://facebook.github.io/react-native/"
  s.license                = package["license"]
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = source
  # s.source_files           = File.join('Libraries/FBLazyVector', "**/*.{c,h,m,mm,cpp}")
  # s.header_dir             = "FBLazyVector"

  s.dependency 'FBLazyVector', version
end

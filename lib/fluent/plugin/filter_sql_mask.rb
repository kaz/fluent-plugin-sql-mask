#
# Copyright 2019- Kazuki Sawada
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "ffi"
require "fluent/plugin/filter"

module Mask
  extend FFI::Library
  ffi_lib __dir__ + "/libsql_mask." + FFI::Platform::OS
  attach_function :masked, [:string], :string
end

module Fluent
  module Plugin
    class SqlMaskFilter < Fluent::Plugin::Filter
      Fluent::Plugin.register_filter("sql_mask", self)

      config_param :field, :string

      def filter(tag, time, record)
        if record.has_key? @field
          record[@field] = Mask.masked record[@field]
          if record[@field].empty?
            record[@field] = "[ PARSE ERROR | FILTERED WHOLE SQL ]"
          end
        end
        record
      end
    end
  end
end

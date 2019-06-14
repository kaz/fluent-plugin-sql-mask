require "bundler"
Bundler::GemHelper.install_tasks

require "ffi"
task :build_go do
  exec """
    cd sql-mask
    make
    go build -buildmode=c-shared -o #{__dir__}/lib/fluent/plugin/libsql_mask.#{FFI::Platform::OS}
  """
end

require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs.push("lib", "test")
  t.test_files = FileList["test/**/test_*.rb"]
  t.verbose = true
  t.warning = true
end

task default: [:test]

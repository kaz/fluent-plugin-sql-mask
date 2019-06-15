require "bundler"
Bundler::GemHelper.install_tasks

def build_lib(platform)
  """
    cd sql-mask
    make libsql_mask.#{platform}
    mv libsql_mask.#{platform} #{__dir__}/lib/fluent/plugin
  """
end

task :build_lib_linux do
  exec build_lib :linux
end
task :build_lib_darwin do
  exec build_lib :darwin
end

require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs.push("lib", "test")
  t.test_files = FileList["test/**/test_*.rb"]
  t.verbose = true
  t.warning = true
end

task default: [:test]

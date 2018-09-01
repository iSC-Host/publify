require 'English'

namespace :i18n do
  desc 'Check translation health'
  task :health do
    `i18n-tasks health`
    abort('Translation problems found') unless $CHILD_STATUS.success?
  end
end

task default: 'i18n:health'

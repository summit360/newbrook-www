# frozen_string_literal: true

require 'guard/guard'

module Guard
  # Guard for less files
  class LessWatcher < ::Guard::Guard
    def start
      run_on_changes([])
    end

    def reload
      start
      stop
    end

    def run_on_changes(paths)
      dest_path = 'source/assets/css/application.css.less'
      return if paths == [dest_path]

      next_number = next_number(dest_path).to_i

      template = File.read('source/assets/css/application-template.css.less')

      File.open(dest_path, 'w') do |file|
        file.write(template.gsub(%r{// (\d+)}) { "// #{next_number}" })
      end
    end

    def next_number(dest_path)
      return unless File.exist?(dest_path)

      contents = File.read(dest_path)
      Regexp.last_match(1).to_i + 1 if contents =~ %r{// (\d+)}
    end
  end
end

guard :less_watcher do
  watch(%r{^source/assets/css/(.+)\.less$})
end

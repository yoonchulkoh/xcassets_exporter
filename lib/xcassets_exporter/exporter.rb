require 'fileutils'

module XcassetsExporter
  class Exporter
    def export(src, dest)
      raise "SRC_PATH and DEST_PATH is required" and return if src == nil || dest == nil
      raise "SRC_PATH is not xcassets directory" and return unless src.end_with?("xcassets")

      paths = Dir.glob("#{src}/**/*")
      file_paths = paths.select do |path| 
        !(File.directory?(path) || path.end_with?("Contents.json"))
      end
      file_paths.map do |path|
        new_path = path.gsub(src, dest).gsub(/\/[^\/]*\.imageset/, "")
        FileUtils.mkdir_p(File.dirname(new_path))
        FileUtils.cp(path, new_path)
      end
    end
  end
end

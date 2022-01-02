#!/usr/bin/env ruby

# Author of this script: PAT-O-MATION (https://stackoverflow.com/a/57495308/2040520)

require 'fileutils'

module Jekyll
  Jekyll::Hooks.register :site, :post_write do |post|
    Dir.glob('_root/*') do |file|
      sourcePath = file
      outputPath = File.join('_site', File.basename(file) )
      FileUtils.cp(sourcePath, outputPath)
    end
  end
end

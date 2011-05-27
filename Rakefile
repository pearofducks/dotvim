require 'fileutils'

desc "Performs base installation"
task :base do
	system("git clone git://github.com/altercation/vim-colors-solarized.git bundle/solarized")
  system("git clone git://github.com/scrooloose/nerdtree.git bundle/nerdtree")
  system("git clone git://github.com/tpope/vim-git.git bundle/git")
  system("git clone git://github.com/strange/strange.vim.git bundle/strange")
  system("git clone git://github.com/tpope/vim-markdown.git bundle/markdown")
  system("git clone git://github.com/tpope/vim-surround.git bundle/surround")
  system("git clone git://github.com/tpope/vim-repeat.git bundle/repeat")
  system("git clone git://github.com/tpope/vim-haml.git bundle/haml")
  system("git clone git://github.com/vim-ruby/vim-ruby.git bundle/ruby")
  system("git clone git://github.com/ervandew/supertab.git bundle/supertab")
  system("git clone git://github.com/tpope/vim-endwise.git bundle/endwise")
end

desc "Performs bundle cleanup (delete plugins installed from git source)"
task :cleanup do
  path = File.join(File.dirname(__FILE__), 'bundle')
  Dir.foreach(path) do |entry|
    if File.exist?(File.join(path, entry, ".git"))
      FileUtils.rm_rf(File.join(path, entry))
    end unless entry =~ /\.+/
  end
end

desc "Performs plugins update"
task :update do
  path = File.join(File.dirname(__FILE__), 'bundle')
  Dir.foreach(path) do |entry|
    bundle = File.join(path, entry)
    if File.exist?(File.join(bundle, ".git"))
      print "Updating #{entry}: "
      system("cd #{bundle} && git pull")
      system("cd #{bundle} && git submodule update") unless `cd #{bundle} && git submodule`.empty?
    end unless entry =~ /\.+/
  end
end

desc "=> base"
task :default => [:base]

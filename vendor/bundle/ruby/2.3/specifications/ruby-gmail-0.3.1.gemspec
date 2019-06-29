# -*- encoding: utf-8 -*-
# stub: ruby-gmail 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-gmail".freeze
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["BehindLogic".freeze]
  s.date = "2014-03-28"
  s.description = "A Rubyesque interface to Gmail, with all the tools you'll need. Search, read and send multipart emails; archive, mark as read/unread, delete emails; and manage labels.".freeze
  s.email = "gems@behindlogic.com".freeze
  s.extra_rdoc_files = ["README.markdown".freeze]
  s.files = ["README.markdown".freeze]
  s.homepage = "http://dcparker.github.com/ruby-gmail".freeze
  s.post_install_message = "\n\e[34mIf ruby-gmail saves you TWO hours of work, want to compensate me for, like, a half-hour?\nSupport me in making new and better gems:\e[0m \e[31;4mhttp://pledgie.com/campaigns/7087\e[0m\n\n".freeze
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "A Rubyesque interface to Gmail, with all the tools you'll need.".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<shared-mime-info>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mail>.freeze, [">= 2.2.1"])
      s.add_runtime_dependency(%q<mime>.freeze, [">= 0.1"])
    else
      s.add_dependency(%q<shared-mime-info>.freeze, [">= 0"])
      s.add_dependency(%q<mail>.freeze, [">= 2.2.1"])
      s.add_dependency(%q<mime>.freeze, [">= 0.1"])
    end
  else
    s.add_dependency(%q<shared-mime-info>.freeze, [">= 0"])
    s.add_dependency(%q<mail>.freeze, [">= 2.2.1"])
    s.add_dependency(%q<mime>.freeze, [">= 0.1"])
  end
end

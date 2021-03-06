module Faststrap
  module InstallActions
    class XctoolInstallAction < InstallAction

       def self.group
         Faststrap::ActionsGroup::TESTS
       end

       def self.description
         "Install Xctool"
       end

       def self.cmd
         Faststrap::InstallActions.brew_install "xctool"
       end

       def self.ucmd
         Faststrap::InstallActions.brew_uninstall "xctool"
       end

       def self.name
         "xctool"
       end

       def self.installed?
         Faststrap::InstallActions.cmd? "xctool"
       end

    end
  end
end

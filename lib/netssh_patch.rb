# -*- coding: utf-8 -*-

# == override SSHKit::Backend::Netssh#ssh to add ssh gateway functionability
module SSHKit
  module Backend
    class Netssh
      def ssh_with_gateway
        @ssh ||= begin
                   if gateway = host.fetch(:gateway)
                     gateway.ssh(
                       String(host.hostname),
                       host.username,
                       host.netssh_options
                     )
                   else
                     ssh_without_gateway
                   end
                 end
      end
      alias_method :ssh_without_gateway, :ssh
      alias_method :ssh, :ssh_with_gateway
    end
  end
end


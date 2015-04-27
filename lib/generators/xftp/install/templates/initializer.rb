XFTP.configure do |config|
  # Logging configuration
  #
  # Default logger fallbacks to `Rails.logger` if available, otherwise `STDOUT` will be used.
  #
  # config.logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT),

  # FTP connection settings
  #
  # config.ftp = {
  #   binary: true,
  #   passive: true,
  #   debug_mode: false,
  #   open_timeout: nil,
  #   resume: false
  # }

  # SSH (SFTP) connection settings
  #
  # config.ssh = {
  #   keepalive: true,
  #   keepalive_interval: 30,
  #   forward_agent: true,
  #   verbose: :error
  # }
end

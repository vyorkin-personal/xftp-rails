module XFTP
  module Rails
    module VERSION
      MAJOR = 0
      MINOR = 2
      PATCH = 1
      SUFFIX = 'alpha'

      NUMBER = [MAJOR, MINOR, PATCH].compact.join('.')
      STRING = "#{NUMBER}-#{SUFFIX}"
    end
  end
end

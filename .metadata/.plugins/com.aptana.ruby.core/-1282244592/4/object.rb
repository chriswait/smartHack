class Object < BasicObject
  include Kernel

  ARGF = ARGF
  ARGV = []
  ArgumentError = ArgumentError
  Array = Array
  BasicObject = BasicObject
  Bignum = Bignum
  Binding = Binding
  Class = Class
  Comparable = Comparable
  Complex = Complex
  Data = Data
  Dir = Dir
  ENV = {"XDG_SESSION_PATH"=>"/org/freedesktop/DisplayManager/Session0", "SSH_AGENT_PID"=>"1949", "rvm_version"=>"1.10.3", "SESSION_MANAGER"=>"local/SALVADOR:@/tmp/.ICE-unix/1910,unix/SALVADOR:/tmp/.ICE-unix/1910", "rvm_uname"=>"Linux", "GNOME_DESKTOP_SESSION_ID"=>"this-is-deprecated", "rvm_tar"=>"tar", "COMPIZ_CONFIG_PROFILE"=>"ubuntu", "XDG_SESSION_COOKIE"=>"e7bc53cef32bc480581989dc0000000a-1361267072.159223-610084934", "GDMSESSION"=>"ubuntu", "MANDATORY_PATH"=>"/usr/share/gconf/ubuntu.mandatory.path", "PWD"=>"/home/barney/Aptana Studio 3", "MY_RUBY_HOME"=>"/usr/local/rvm/rubies/ruby-1.9.2-p318", "PATH"=>"/usr/local/rvm/gems/ruby-1.9.2-p318/bin:/usr/local/rvm/gems/ruby-1.9.2-p318@global/bin:/usr/local/rvm/rubies/ruby-1.9.2-p318/bin:/usr/local/rvm/bin:/home/barney/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games", "XDG_CONFIG_DIRS"=>"/etc/xdg/xdg-ubuntu:/etc/xdg", "XDG_CURRENT_DESKTOP"=>"Unity", "APTANA_VERSION"=>"3.3.1.1355795126", "rvm_env_string"=>"ruby-1.9.2-p318", "XAUTHORITY"=>"/home/barney/.Xauthority", "rvm_path"=>"/usr/local/rvm", "rvm_ruby_string"=>"ruby-1.9.2-p318", "XDG_SEAT_PATH"=>"/org/freedesktop/DisplayManager/Seat0", "GEM_PATH"=>"/usr/local/rvm/gems/ruby-1.9.2-p318:/usr/local/rvm/gems/ruby-1.9.2-p318@global", "GTK_MODULES"=>"canberra-gtk-module:canberra-gtk-module", "GNOME_KEYRING_CONTROL"=>"/tmp/keyring-5GeSyk", "SHLVL"=>"1", "__array_start"=>"0", "XDG_DATA_DIRS"=>"/usr/share/ubuntu:/usr/share/gnome:/usr/local/share/:/usr/share/", "rvm_prefix"=>"/usr/local", "LOGNAME"=>"barney", "GPG_AGENT_INFO"=>"/tmp/keyring-5GeSyk/gpg:0:1", "IRBRC"=>"/usr/local/rvm/rubies/ruby-1.9.2-p318/.irbrc", "RUBY_VERSION"=>"ruby-1.9.2-p318", "SSH_AUTH_SOCK"=>"/tmp/keyring-5GeSyk/ssh", "LD_LIBRARY_PATH"=>"/usr/lib/jvm/java-6-openjdk-amd64/jre/lib/amd64/server:/usr/lib/jvm/java-6-openjdk-amd64/jre/lib/amd64:/usr/lib/jvm/java-6-openjdk-amd64/jre/../lib/amd64", "SHELL"=>"/bin/bash", "LIBGL_DRIVERS_PATH"=>"/usr/lib/fglrx/dri:/usr/lib32/fglrx/dri", "DBUS_SESSION_BUS_ADDRESS"=>"unix:abstract=/tmp/dbus-pzhx77lxMo,guid=f1b5227673bc3f0c1b87e4550000001f", "GNOME_KEYRING_PID"=>"1899", "rvm_bin_path"=>"/usr/local/rvm/bin", "LANGUAGE"=>"en_GB:en", "_first"=>"0", "escape_flag"=>"1", "_second"=>"1", "GEM_HOME"=>"/usr/local/rvm/gems/ruby-1.9.2-p318", "DESKTOP_SESSION"=>"ubuntu", "DISPLAY"=>":0.0", "USER"=>"barney", "UBUNTU_MENUPROXY"=>"libappmenu.so", "HOME"=>"/home/barney", "DEFAULTS_PATH"=>"/usr/share/gconf/ubuntu.default.path", "LANG"=>"en_GB.UTF-8"}
  EOFError = EOFError
  Encoding = Encoding
  EncodingError = EncodingError
  Enumerable = Enumerable
  Enumerator = Enumerator
  Errno = Errno
  Etc = Etc
  Exception = Exception
  FALSE = false
  FalseClass = FalseClass
  Fiber = Fiber
  FiberError = FiberError
  File = File
  FileTest = FileTest
  FileUtils = FileUtils
  Fixnum = Fixnum
  Float = Float
  FloatDomainError = FloatDomainError
  GC = GC
  Gem = Gem
  Hash = Hash
  IO = IO
  IOError = IOError
  IndexError = IndexError
  Integer = Integer
  Interrupt = Interrupt
  Kernel = Kernel
  KeyError = KeyError
  LoadError = LoadError
  LocalJumpError = LocalJumpError
  Marshal = Marshal
  MatchData = MatchData
  Math = Math
  Method = Method
  Module = Module
  Mutex = Mutex
  NIL = nil
  NameError = NameError
  NilClass = NilClass
  NoMemoryError = NoMemoryError
  NoMethodError = NoMethodError
  NotImplementedError = NotImplementedError
  Numeric = Numeric
  OUTPUT_PATH = "/media/Data/My Documents/Uni/4th Year/ILW/smartHack/.metadata/.plugins/com.aptana.ruby.core/-1282244592/4/"
  Object = Object
  ObjectSpace = ObjectSpace
  Proc = Proc
  Process = Process
  RUBY_COPYRIGHT = "ruby - Copyright (C) 1993-2012 Yukihiro Matsumoto"
  RUBY_DESCRIPTION = "ruby 1.9.2p318 (2012-02-14 revision 34678) [x86_64-linux]"
  RUBY_ENGINE = "ruby"
  RUBY_PATCHLEVEL = 318
  RUBY_PLATFORM = "x86_64-linux"
  RUBY_RELEASE_DATE = "2012-02-14"
  RUBY_REVISION = 34678
  RUBY_VERSION = "1.9.2"
  Random = Random
  Range = Range
  RangeError = RangeError
  Rational = Rational
  Regexp = Regexp
  RegexpError = RegexpError
  RubyVM = RubyVM
  RuntimeError = RuntimeError
  STDERR = IO.new
  STDIN = IO.new
  STDOUT = IO.new
  ScriptError = ScriptError
  SecurityError = SecurityError
  Signal = Signal
  SignalException = SignalException
  StandardError = StandardError
  StopIteration = StopIteration
  String = String
  Struct = Struct
  Symbol = Symbol
  SyntaxError = SyntaxError
  SystemCallError = SystemCallError
  SystemExit = SystemExit
  SystemStackError = SystemStackError
  TOPLEVEL_BINDING = #<Binding:0x0000000153d990>
  TRUE = true
  Thread = Thread
  ThreadError = ThreadError
  ThreadGroup = ThreadGroup
  Time = Time
  TrueClass = TrueClass
  TypeError = TypeError
  UnboundMethod = UnboundMethod
  ZeroDivisionError = ZeroDivisionError



  protected


  private

  def dir_names(arg0)
  end

  def file_name(arg0)
  end

  def get_classes
  end

  def grab_instance_method(arg0, arg1)
  end

  def print_args(arg0)
  end

  def print_instance_method(arg0, arg1)
  end

  def print_method(arg0, arg1, arg2, arg3, arg4, *rest)
  end

  def print_type(arg0)
  end

  def print_value(arg0)
  end

end

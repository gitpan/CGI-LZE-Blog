# Add your own lib
# use lib qw(/srv/www/perl-lib);
###################################################################################
#      path is set during make                                                    #
#lze###############################################################################
use CGI::LZE qw(:all);
use CGI::LZE::Settings;
use DBI::LZE qw(:all);
use HTML::Menu::TreeView qw(:all);
loadSettings("%PATH%/config/config.pl");
use HTML::Template::LZE;
use HTML::Template::LZE::Window qw(:all);
my %parameter = (path => "%PATH%/templates/", style => "Crystal", server => "%host%",);
use HTML::Template::LZE::Main qw(:all);
initMain(\%parameter);
initWindow(\%parameter);
use HTML::Template::LZE::TabWidget qw(:all);
initTabWidget(\%parameter);
use HTML::Template::LZE::Pages;
use HTML::Template::LZE::Editor;
use HTML::LZE::BBCODE;
use DBI::LZE::Database qw(:all);
use CGI::LZE::Blog;
### 3party
use HTML::Entities;
use CGI::QuickForm;
use Syntax::Highlight::Perl;

# Apache2 mod perl stuff
# enable if the mod_perl 1.0 compatibility is needed
# use Apache2::compat ();
# preload all mp2 modules
# use ModPerl::MethodLookup;
# ModPerl::MethodLookup::preload_all_modules();

#standart section
# use ModPerl::Util        ();    #for CORE::GLOBAL::exit
# use Apache2::RequestRec  ();
# use Apache2::RequestIO   ();
# use Apache2::RequestUtil ();
# use Apache2::ServerRec   ();
# use Apache2::ServerUtil  ();
# use Apache2::Connection  ();
# use Apache2::Log         ();
# use APR::Table           ();
# use ModPerl::Registry    ();
# use Apache2::Const -compile => ':common';
# use APR::Const -compile     => ':common';
#
# # use lib qw(/srv/www/perl-lib);
# # enable if the mod_perl 1.0 compatibility is needed
# # use Apache2::compat ();
# # preload all mp2 modules
# # use ModPerl::MethodLookup;
# # ModPerl::MethodLookup::preload_all_modules();
# use ModPerl::Util        ();    #for CORE::GLOBAL::exit
# use Apache2::RequestRec  ();
# use Apache2::RequestIO   ();
# use Apache2::RequestUtil ();
# use Apache2::ServerRec   ();
# use Apache2::ServerUtil  ();
# use Apache2::Connection  ();
# use Apache2::Log         ();
# use APR::Table           ();
# use ModPerl::Registry    ();
# use Apache2::Const -compile => ':common';
# use APR::Const -compile     => ':common';

1;

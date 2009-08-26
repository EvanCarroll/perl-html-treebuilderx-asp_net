use Test::More tests => 7;

BEGIN { use_ok( 'Moose' ) }
BEGIN { use_ok( 'HTML::TreeBuilderX::ASP_NET' ) }
BEGIN { use_ok( 'HTML::Element' ) }
BEGIN { use_ok( 'HTML::TreeBuilder' ) }
BEGIN { use_ok( 'MooseX::Traits' ) }

{
	eval { HTML::TreeBuilderX::ASP_NET->new->press };
	ok ( $@, "Won't work naked" );
}

{
	eval { HTML::TreeBuilderX::ASP_NET->new({ element=>HTML::Element->new('a') })->press };
	like ( $@, qr/<form>/, 'Needs parent form tag' );
}

1;

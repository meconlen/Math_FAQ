add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
add_cus_dep( 'ntn', 'not', 0, 'makeglossaries' );
$clean_ext .= " acr acn alg glo gls glg ist not ntn glsdefs bbl lol";

sub makeglossaries {
    my ($base_name, $path) = fileparse( $_[0] );
    pushd $path;
    my $return = system "makeglossaries", $base_name;
    popd;
    return $return;
}

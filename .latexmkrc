unshift @ARGV, '-pdf', '-pdflatex', '-jobname=CUInSpace Avionics Systems 2024 2025';
@default_files = ('design.tex');
$clean_ext = "acn bbl glo ist";
$aux_dir = 'aux';


add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
$clean_ext .= " acr acn alg glo gls glg";

sub makeglossaries {
    my ($base_name, $path) = fileparse( $_[0] );
    my @args = ( "-q", "-d", $aux_dir, $base_name );
    if ($silent) { unshift @args, "-q"; }
    return system "makeglossaries", "-d", $path, $base_name; 
}

, "terfynol" => "final"#!/usr/bin/perl

%keywords = ("cyhoedd" => "public", "sefydlog" => "static", "ddi-rym" => "void", "dosbarth" => "class", "deuol" => "boolean", "tor" => "break", "cyflwr" => "case", "gwneud" => "do", "terfynol" => "final");

sub parse_source{
    open(sourcefile, $_[0]);
    $new_source = "";
    while(<sourcefile>){
        chomp;
        @tokens = split(/ /, $_);
        for $i(0 .. $#tokens){
            $phrase = @tokens[$i];
            if (exists $keywords{$phrase}){
                $phrase = $keywords{$phrase};
            }
            $new_source .= $phrase." ";
        }
        $new_source .= "\n";
    }
    close(sourcefile);
    `mv $_[0] .$_[0]`;
    return $new_source;
}

sub write_new_source{
    open(newsource, ">".$_[0]); 
    print newsource $_[1];
    close(newsource); 
}

sub compile_translated_source{
    @response = `javac $_[0]`;
    print @response;
    `mv .$_[0] $_[0]`;
}

$source_file = $ARGV[0];
$new_source = &parse_source($source_file);
&write_new_source($source_file, $new_source);
&compile_translated_source($source_file);

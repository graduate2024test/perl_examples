
$path = 'C:\A\BB\C\windows_fs.txt';
$file =  (split( /\/|\\/, $path))[-1];
print "File: $file\n";
$name =  (split( '\.', $file))[0];
print "File: $name\n";

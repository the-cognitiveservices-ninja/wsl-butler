$filedate = $args[0]
$name = $args[1]
$filename = 'images\' + $filedate + '-' + $name +'.tgz'
wsl --import $name instances\$name $filename  --version 2

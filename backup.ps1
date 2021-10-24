$name = $args[0]
$filedate = (Get-Date).tostring("yyyy-MM-dd_HH-MM")
$filename = 'images\' + $filedate + '-' + $name +'.tgz'
wsl --export $name $filename

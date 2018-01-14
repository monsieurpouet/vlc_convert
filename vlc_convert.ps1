$outputExtension = ".mp3"
$bitrate = 160
$channels = 2

foreach($inputFile in get-childitem -recurse -Filter *.webm)
{
$outputFileName = [System.IO.Path]::GetFileNameWithoutExtension($inputFile.FullName) + $outputExtension;
$outputFileName = [System.IO.Path]::Combine($inputFile.DirectoryName, $outputFileName);

$programFiles = ${env:Program Files};
if($programFiles -eq $null) { $programFiles = $env:ProgramFiles; }

$processName = $programFiles + "\VideoLAN\VLC\vlc.exe"
$processArgs = "-I dummy -vvv `"$($inputFile.FullName)`" --sout=#transcode{acodec=`"mp3`",ab=`"$bitrate`",`"channels=$channels`"}:standard{access=`"file`",mux=`"wav`",dst=`"$outputFileName`"} vlc://quit"

start-process $processName $processArgs -wait
}

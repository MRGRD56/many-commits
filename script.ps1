param 
(
    [int]$count = 50
)

for ($i = 1; $i -le $count; $i++)
{
    $time = [System.DateTime]::Now.ToString("yyyy-MM-ddTHH\:mm\:ss")
    [System.IO.File]::WriteAllText("C:\Users\priv-repo\readme.md", $time)
    git add *
    git commit -m ($time)
    git push origin master
    Write-Host ("[Прогресс: " + $i + " / " + $count + "]")
}

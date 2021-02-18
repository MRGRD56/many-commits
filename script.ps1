function Push 
{
    git push origin master
    Write-Host ("SUCCECCFULY PUSHED")
}

param 
(
    [int]$count = 100
)

for ($i = 1; $i -le $count; $i++)
{
    $time = [System.DateTime]::Now.ToString("yyyy-MM-ddTHH\:mm\:ss\'fff")
    [System.IO.File]::WriteAllText(".\readme.md", $time)
    git add *
    git commit -m ($time)
    Write-Host ("[Прогресс: " + $i + " / " + $count + "]")
    if ($i % 200 -eq 0)
    {
        Push
    }
}

Push
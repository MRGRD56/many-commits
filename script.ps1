param 
(
    [int]$count = 100
)

function Push 
{
    git push origin master
    Write-Host ("SUCCECCFULY PUSHED")
}

for ($i = 1; $i -le $count; $i++)
{
    $time = [System.DateTime]::Now.ToString("yyyy-MM-ddTHH\:mm\:ss\'fff")
    [System.IO.File]::WriteAllText("C:\Users\SU\many-commits\readme.md", $time)
    git add *
    git commit -m ($time)
    Write-Host ("[Прогресс: " + $i + " / " + $count + "]")
    if ($i % 200 -eq 0)
    {
        Push
    }
}

Push
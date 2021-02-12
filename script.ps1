$random = [System.Random]::new()

while ($true)
{
    [System.IO.File]::WriteAllText("C:\Users\priv-repo\readme.md", $random.NextDouble().ToString())
    git add *
    git commit -m ([System.DateTime]::Now.ToString("yyyy-MM-ddTHH\:mm\:ss"))
    git push origin master
    Start-Sleep 5
}

$result = "# Personal Scoop bucket

[![Build status](https:ci.appveyor.comapiprojectsstatussdwq9tekqddjawo7branchmaster?svg=true)](https:ci.appveyor.comprojectiquiwscoop-bucketbranchmaster)

## Applications

| Name | Description | Unofficial binary |
| ---  | ---         | ---               |
"

$files = Get-ChildItem bucket

foreach ($file in $files) {
    $path = Join-Path -Path "bucket" -ChildPath $file
    $name = $file -replace "\.json$", ''
    $json = Get-Content $path | ConvertFrom-Json
    $homepage = $json.homepage
    $descr = $json.description
    $unofficial = ''
    if ($homepage -match "github.comiquiw.*-(binary|dll)" -and
        $name -ne 'rireq') {
        $unofficial = 'O'
    }
    $result += "| [$name]($homepage) | $descr | $unofficial |`r`n"
}

$result | Set-Content README.md

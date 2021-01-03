$imgBytes = [System.IO.File]::ReadAllBytes("<FILE LOCATION>")

[array]::Reverse($imgBytes)

[System.IO.file]::WriteAllBytes('<OUTPUT LOCATION', $imgBytes)
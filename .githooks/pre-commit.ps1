$ErrorActionPreference = "Stop"

$hookDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = (Resolve-Path (Join-Path $hookDir "..")).Path

# Check staged markdown/text files for deterministic content standards.
$stagedFiles = git -C $repoRoot diff --cached --name-only --diff-filter=ACM | Where-Object { $_ -match '\.(md|txt)$' }
$failed = $false

foreach ($file in $stagedFiles) {
    # Validate the staged blob, not the working-tree file.
    $content = git -C $repoRoot show ":$file" 2>$null | Out-String
    if ([string]::IsNullOrWhiteSpace($content)) { continue }

    # Keep public markdown limited to the root README and article posts.
    if ($file -notmatch '^(README\.md|content/posts/.*\.md)$') {
        Write-Host "Error: Public markdown/text files are limited to README.md and content/posts/*.md. Remove internal docs from $file." -ForegroundColor Red
        $failed = $true
        continue
    }

    if ($content -match 'via Matthew Hayes') {
        Write-Host "Error: Unauthorized signature 'via Matthew Hayes' found in $file." -ForegroundColor Red
        $failed = $true
    }

    if ($content -match '[\u2014\u2013]') {
        Write-Host "Error: Em-dash or en-dash found in $file. Please use regular hyphens." -ForegroundColor Red
        $failed = $true
    }

    if ($content -match '[\u201C\u201D\u2018\u2019]') {
        Write-Host "Error: Smart/curly quotes found in $file. Please use plain ASCII quotes/apostrophes." -ForegroundColor Red
        $failed = $true
    }

    # Article-specific checks for deterministic publication consistency.
    if ($file -match '^content/posts/.*\.md$' -and $file -notmatch '^content/posts/README\.md$') {
        # Keep article markdown ASCII-only to avoid encoding/mojibake issues.
        if ($content -match '[^\u0000-\u007F]') {
            Write-Host "Error: Non-ASCII characters found in $file. Normalize punctuation/encoding before commit." -ForegroundColor Red
            $failed = $true
        }

        # Signature should be injected globally by template, not hand-written in articles.
        if ($content -match 'The Pragmatic Agentic Solutions Architect') {
            Write-Host "Error: Manual signature text found in $file. Use global article signature config instead." -ForegroundColor Red
            $failed = $true
        }

        if ($content -notmatch "(?s)\A---\r?\n(.*?)\r?\n---\r?\n") {
            Write-Host "Error: Missing or malformed front matter in $file." -ForegroundColor Red
            $failed = $true
            continue
        }

        $frontMatter = $Matches[1]

        if ($frontMatter -notmatch '(?m)^title:\s*.+$') {
            Write-Host "Error: Missing 'title' in front matter for $file." -ForegroundColor Red
            $failed = $true
        }

        if ($frontMatter -notmatch '(?m)^draft:\s*(true|false)\s*$') {
            Write-Host "Error: Missing or invalid 'draft' (true/false) in front matter for $file." -ForegroundColor Red
            $failed = $true
        }

        if ($frontMatter -notmatch '(?m)^date:\s*(.+)$') {
            Write-Host "Error: Missing 'date' in front matter for $file." -ForegroundColor Red
            $failed = $true
        } else {
            $dateRaw = $Matches[1].Trim()
            $dateRaw = $dateRaw.Trim("'`"")
            # Require RFC3339 with timezone for deterministic sorting.
            if ($dateRaw -notmatch '^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(Z|[+-]\d{2}:\d{2})$') {
                Write-Host "Error: 'date' must be RFC3339 with timezone in $file (e.g. 2026-04-25T09:30:00-05:00)." -ForegroundColor Red
                $failed = $true
            }
        }
    }
}

if ($failed) { exit 1 } else { exit 0 }

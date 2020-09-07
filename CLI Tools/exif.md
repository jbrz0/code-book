# Get EXIF Image Data

[Docs](https://github.com/libexif/libexif/blob/master/README)

[Homebrew](https://formulae.brew.sh/formula/exif)

### Install via Homebrew (macOS)
`brew install exif`

### Show help menu
`exif --help`

### Show image width
`exif -t 0x0100 <filename>`

### Show all possible tags (need filename - use RAM address)
`exif -l <filename>`

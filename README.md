# language-rust-treesitter

A better Tree Sitter atom package for rust than `language-rust-bundled`

## Features
 - Contextualized tokennization using `tree-sitter`.
 - Backup TextMate language support, just in case Tree Sitter one doesn't work.
 - Several snippets.
 - Expose much more classes to make better syntax theme stylization.

## Improvements to be made
 - [ ] Markdown highlight inside rust doc strings on the tree-sitter side (I don't even know if it's possible)
 - [ ] Improve the context tokennization for more items

### Additional notes
 - With `tree-sitter`, one can use and abuse the generated tree to get more accurate tokennization. That means that we can have equal symbols being tokennized into different things depending of the source code context. That means we have 2 consequences, considering a theme with proper styling:
  1. Easy to know the meaning of a symbol in the code (e.g. If "|" is a bitwise or or a closure definition || If "\*" is a deference or a pointer definition or multiplication operator || If ".." is a range or a match remaining)
  2. Easy to get wrong syntax: since it will be tokennized only if in the right context (e.g. "@" will not be tokennized if it's not in the right || "&" will not be tokennized if the following lifetime has no name (`&'`) or of there is no type specified (`&'a <BlankHere>`))

 - There is a trade offer between the tree-sitter and textmate tokennization:
  1. Tree-sitter version is faster and have parameter, struct field tokennization and context tokennization, while lacks the doc string highlight.
  2. TextMate version is slower and have doc string highlight, but lacks parameter, struct field tokennization and context tokennization.

 - The TextMate version is just copy-paste of [TheEnigmaBlade/atom-language-rust-redux](https://github.com/TheEnigmaBlade/atom-language-rust-redux) so I put his name on the license file for the contribution.

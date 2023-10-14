# EditorConfig
## [[dfmt]]

- https://editorconfig.org/
- https://github.com/dlang-community/dfmt/tree/master#dfmt-specific-properties

```ini
# top-most EditorConfig file
root = true
```

```ini
# Unix-style newlines with a newline ending every file
[*]
end_of_line = lf
insert_final_newline = true
charset = utf-8
```

```ini
# 4 space indentation
[*.{py,d}]
indent_style = space
indent_size = 4
```
```ini
# Tab indentation (no size specified)
[Makefile]
indent_style = tab
```
```ini
# Indentation override for all JS under lib directory
[lib/**.js]
indent_style = space
indent_size = 2
```

### Wildcard Patterns

|   |   |
|---|---|
|`*`|Matches any string of characters, except path separators (`/`)|
|`**`|Matches any string of characters|
|`?`|Matches any single character|
|`[name]`|Matches any single character in _name_|
|`[!name]`|Matches any single character not in _name_|
|`{s1,s2,s3}`|Matches any of the strings given (separated by commas) (**Available since EditorConfig Core 0.11.0**)|
|`{num1..num2}`|Matches any integer numbers between _num1_ and _num2_, where num1 and num2 can be either positive or negative|

Special characters can be escaped with a backslash so they won't be interpreted as wildcard patterns.

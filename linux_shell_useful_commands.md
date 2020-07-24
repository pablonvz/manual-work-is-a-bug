# Useful Linux Commands

## Search and Replace Text Across Multiple Files

```bash
grep -RiIl 'search' | xargs sed -i 's/search/replace/g'
```

Source: <https://www.internalpointers.com/post/linux-find-and-replace-text-multiple-files>

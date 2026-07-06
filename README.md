# aufvektor.github.io

A personal site built with Jekyll and hosted on GitHub Pages.

## Creating a new post

Add a Markdown file to the `_posts/` directory named with the date and a slug:

```
_posts/2026-07-15-title-of-the-post.md
```

Begin the file with the following front matter, then write the post beneath it in Markdown:

```markdown
---
layout: post
title: "Title of the Post"
---

The text of the post begins here.
```

Commit and push the file (or create it directly on github.com via **Add file → Create new file**). GitHub Pages rebuilds the site automatically within a minute or two, and the post appears on the home page, newest first.

To remove a post, delete its file.

## Previewing locally (optional)

```
gem install bundler jekyll
jekyll serve
```

Then open http://localhost:4000.

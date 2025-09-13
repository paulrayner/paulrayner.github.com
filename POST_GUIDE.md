# Blog Post Creation Guide

This guide explains how to create new posts for the "Leading by Design" blog using the modern Jekyll workflow.

## Creating a New Post

### 1. File Naming Convention
Create files in `_posts/` directory using this format:
```
_posts/YYYY-MM-DD-post-title-slug.md
```

**Example:**
```
_posts/2025-09-12-cleaning-up-93-grammar-paradigms-with-ai-agents.md
```

### 2. Frontmatter Template
Every post must start with YAML frontmatter:

```yaml
---
layout: post
title: "Your Post Title"
date: YYYY-MM-DD HH:MM:SS -0700
tags: [Tag1, Tag2, Tag3]
excerpt: Brief description that appears on homepage and in RSS feed (1-2 sentences max)
image: subfolder/featured-image.jpg  # Optional - shows on homepage
---
```

**Important Notes:**
- **Date format**: Use `YYYY-MM-DD HH:MM:SS -0700` (Mountain Time)
- **Tags**: Use existing tags when possible: `[AI, Development, DDD, Design, Agile, Cloud, Architecture]`
- **Excerpt**: Keep concise - this appears on homepage
- **Image**: Optional but recommended for visual consistency

## Content Guidelines

### Writing Style
- **Personal and direct** - Write from your experience
- **Concrete examples** - Include specific details and numbers
- **Practical insights** - Focus on actionable lessons learned
- **Professional but approachable** - Match existing blog tone

### Structure That Works
Based on successful posts:

1. **Hook** - Start with the problem or situation
2. **Context** - Explain what you were working on
3. **Challenge** - Describe the specific issue you faced
4. **Solution** - Detail your approach and process
5. **Results** - Show what you accomplished
6. **Lessons** - Extract transferable insights
7. **Question** - End with engagement for readers

## Adding Media

### Images
1. **Create asset folder**: `/assets/post-topic-name/`
2. **Use descriptive filenames**: `before-cleanup.png`, not `image1.png`
3. **Optimize for web**: Keep under 1MB each
4. **Add to post**:
   ```markdown
   ![Descriptive alt text](/assets/post-topic-name/image.png)
   ```

### Videos
1. **Place in same asset folder** as images
2. **Convert to web-optimized MP4**:
   ```bash
   cd assets/post-topic-name/
   HandBrakeCLI -i original.mov -o video.mp4 --preset="Web/Creator 720p30" --optimize
   ```
3. **Embed with HTML5**:
   ```html
   <video width="100%" controls poster="/assets/post-topic-name/thumbnail.png">
     <source src="/assets/post-topic-name/video.mp4" type="video/mp4">
     <p>Your browser doesn't support HTML5 video. <a href="/assets/post-topic-name/video.mp4">Download the video</a>.</p>
   </video>
   ```

### Media Best Practices
- **Add descriptive text** between images - avoid back-to-back images
- **Use alt text** for accessibility
- **Include captions** for context when helpful
- **Keep videos under 10MB** for reasonable loading times

## Content Flow Tips

### Visual Storytelling
- **Lead with context** - Show what you're working with
- **Show the problem** - Use screenshots/data to illustrate issues
- **Document the process** - Include workflow images or videos
- **Celebrate results** - Show before/after comparisons

### Text and Image Balance
- **Introduce each image** with context
- **Follow up with explanation** of what the image shows
- **Never place images consecutively** without text between them
- **Use images to support the narrative**, not replace it

## Development Workflow

### Local Testing
```bash
# Start development server
bundle exec jekyll serve --watch --future --port 4000

# View at: http://127.0.0.1:4000/
# Your post: http://127.0.0.1:4000/blog/YYYY/MM/DD/post-title/
```

### Publishing Process
1. **Test locally** - Verify images, video, and formatting
2. **Commit changes** - Add post file and all assets
3. **Push to jekyll branch** - GitHub Pages builds automatically
4. **Verify live site** - Check https://thepaulrayner.com/

## Tag Strategy

### Existing Tags to Use
- **Technical**: `[Development, Coding, Architecture, Cloud]`
- **Methodology**: `[DDD, BDD, Agile, Lean, EventStorming]`
- **Meta**: `[Design, Productivity, Tools, Writing]`
- **New areas**: `[AI, Claude, Hebrew]` (as appropriate)

### Tag Guidelines
- **Use 3-5 tags** per post
- **Mix broad and specific** tags
- **Create new tags sparingly** - prefer existing ones
- **Consider SEO** - tags become URL paths

## Technical Notes

### Jekyll Features Available
- **GitHub-Flavored Markdown** - Tables, code blocks, strikethrough
- **Syntax highlighting** with Rouge
- **Automatic RSS feed** generation
- **Automatic sitemap** generation
- **Tag pages** automatically created

### Legacy Content Compatibility
- **Historical posts preserved** - All original URLs still work
- **Static files maintained** - Legacy HTML served as-is
- **Mixed workflow** - New posts in Markdown, legacy posts as HTML
- **No conflicts** - Jekyll includes but doesn't process legacy content

## Common Patterns

### Code Blocks
```ruby
def example_method
  puts "Use proper syntax highlighting"
end
```

### Blockquotes
> Use blockquotes for emphasis or quotes from others
> 
> — Attribution

### Lists with Emphasis
→ **Key point** - Explanation of why it matters  
→ **Another insight** - Supporting details  
→ **Final thought** - Call to action or next steps  

## Quality Checklist

Before publishing, verify:
- [ ] Frontmatter is complete and correct
- [ ] Featured image displays on homepage
- [ ] All images load and display properly
- [ ] Videos play correctly (if included)
- [ ] Internal links work (if any)
- [ ] Text flows well between media elements
- [ ] Tags are appropriate and existing ones used
- [ ] Excerpt is concise and compelling
- [ ] Local preview looks good at http://127.0.0.1:4000/

This workflow ensures your posts maintain the visual quality and discoverability that your readers expect while using modern, maintainable Markdown format.
# CRITICAL RECOVERY PLAN: Blog Content and Functionality Restoration

## 🚨 Critical Issues Identified

### Issue 1: CONTENT LOSS - Historical Posts Show Placeholder Text
**Problem:** Jekyll posts created for historical content contain only placeholder text instead of real article content.

**Impact:** 
- Years of valuable writing hidden from visitors
- Posts show: "*[This post preserves the original content from the AsciiDoc version, converted to Markdown for the modern Jekyll workflow.]*"
- Real content exists in static HTML files but not accessible via Jekyll posts

**Affected Posts:**
- `_posts/2020-03-23-plotting-paths-to-cloud-migration.md`
- `_posts/2020-03-19-cloud-strategy-design-and-automation.md` 
- `_posts/2019-05-13-eventstorming-team-flow.md`
- `_posts/2019-01-22-realtime-retro-eddd.md`
- `_posts/2015-03-28-bdd-is-a-centered-rather-than-a-bounded-community.md`
- `_posts/2015-02-09-good-design-is-people-centered.md`
- `_posts/2015-01-22-persisting-value-objects.md`

### Issue 2: BROKEN COMMENT SYSTEMS
**Problem:** Both Disqus (historical) and Giscus (new) comment systems not working properly.

**Impact:**
- Historical posts have no comment sections
- New posts may show double comment boxes or broken interface
- Years of existing Disqus comments inaccessible

### Issue 3: MISSING RELATED POSTS FUNCTIONALITY
**Problem:** Related posts cross-referencing disabled during Jekyll modernization.

**Impact:**
- Poor content discovery
- No navigation between related articles
- Reduced engagement and SEO

## 🔧 Recovery Strategy

### Phase 1: CRITICAL - Content Extraction (Highest Priority)

#### Specialized Blog-Post-Migration Agent
**Task:** Complete blog recovery using the specialized blog-post-migration sub-agent

**Process:**
1. **Read source HTML files:**
   - `plotting-paths-to-cloud-migration/index.html`
   - `cloud-strategy-design-and-automation/index.html`
   - `eventstorming-team-flow/index.html` 
   - `realtime-retro-eddd/index.html`
   - `bdd-is-a-centered-rather-than-a-bounded-community/index.html`

2. **Extract article content:**
   - Parse HTML to find main content sections
   - Skip headers, footers, navigation, comment sections
   - Preserve formatting, links, images, blockquotes
   - Convert HTML to clean Markdown

3. **Update Jekyll posts:**
   - Keep existing frontmatter (dates, tags, layout, excerpt, image)
   - Replace placeholder content with extracted real content
   - Maintain proper Markdown formatting
   - Preserve all links and references

**Success Criteria:**
- All Jekyll posts contain full original content
- No placeholder text remains
- Content matches original HTML versions
- All formatting and links preserved

### Comprehensive Recovery Approach

#### Single Specialized Blog-Post-Migration Agent
**Task:** Complete end-to-end blog recovery with all functionality restoration

**Agent Capabilities:**
The blog-post-migration agent is specifically designed for content recovery, comment system integration, and related post functionality. It will handle all recovery tasks in a coordinated manner.

**Integrated Process:**
1. **Content Extraction & Migration:**
   - Extract real content from all historical HTML files
   - Convert to proper Jekyll Markdown format
   - Replace all placeholder text with actual post content
   - Preserve all permalinks and URL structure

2. **Comment System Restoration:**
   - Implement hybrid Disqus (historical) + Giscus (new) system
   - Fix broken comment sections on historical posts
   - Ensure no double-loading of comment systems
   - Test email notifications and functionality

3. **Related Posts Functionality:**
   - Restore cross-referencing between posts
   - Fix or implement modern related posts system
   - Integrate with existing tag system
   - Enable content discovery navigation

**Success Criteria:**
- All historical content restored from placeholder text
- Working hybrid comment system (Disqus for old, Giscus for new)
- Related posts navigation functional
- All original URLs preserved
- No functionality degradation

## 🎯 Execution Strategy

### Parallel Blog-Post-Migration Agent Strategy:

#### **Agent 1: Cloud Migration Posts**
**Task Assignment:**
- Extract content from `plotting-paths-to-cloud-migration/index.html` → `_posts/2020-03-23-plotting-paths-to-cloud-migration.md`
- Extract content from `cloud-strategy-design-and-automation/index.html` → `_posts/2020-03-19-cloud-strategy-design-and-automation.md`

#### **Agent 2: DDD & EventStorming Posts**  
**Task Assignment:**
- Extract content from `eventstorming-team-flow/index.html` → `_posts/2019-05-13-eventstorming-team-flow.md`
- Extract content from `realtime-retro-eddd/index.html` → `_posts/2019-01-22-realtime-retro-eddd.md`

#### **Agent 3: Community & Design Posts**
**Task Assignment:**
- Extract content from `bdd-is-a-centered-rather-than-a-bounded-community/index.html` → `_posts/2015-03-28-bdd-is-a-centered-rather-than-a-bounded-community.md`
- Extract content from `good-design-is-people-centered-design-quotes-part-5/index.html` → `_posts/2015-02-09-good-design-is-people-centered.md`

#### **Agent 4: Technical Content & Comments**
**Task Assignment:**
- Extract content from `persisting-value-objects/index.html` → `_posts/2015-01-22-persisting-value-objects.md`
- Fix Disqus comments on historical posts (restore comment functionality)

#### **Agent 5: System Functionality**
**Task Assignment:**
- Restore related posts functionality and cross-referencing
- Fix Giscus integration for new posts
- Validate hybrid comment system works without conflicts

### Coordination Benefits:
- **⚡ 5x parallel processing** - Content extraction happens simultaneously
- **🎯 Specialized expertise** - All agents have blog-post-migration knowledge
- **🔗 Shared context** - All understand permalink preservation and Jekyll structure
- **📊 Progress tracking** - Can monitor all 5 agents working in parallel

### Success Validation:
1. **Content check:** All posts show real content, no placeholders
2. **Comment check:** Appropriate comment system on each post type
3. **Navigation check:** Related posts visible and functional
4. **URL check:** All original permalinks still work
5. **Performance check:** No double-loading or conflicts

## 📋 Implementation Checklist

### Pre-Execution:
- [ ] Backup current state before any changes
- [ ] Document current file structure
- [ ] Identify all affected files

### During Execution:
- [ ] Monitor agent progress in parallel
- [ ] Verify no conflicts between agent changes
- [ ] Test incremental improvements

### Post-Execution:
- [ ] Full site functionality test
- [ ] Content integrity verification  
- [ ] Comment system validation
- [ ] Related posts accuracy check
- [ ] Performance and loading test

## 🚀 Expected Outcome

**Fully Restored Blog:**
- ✅ All historical content visible and accessible
- ✅ Hybrid commenting: Disqus (old) + Giscus (new)
- ✅ Related posts navigation restored
- ✅ All original URLs and functionality preserved
- ✅ Modern Jekyll workflow ready for new posts
- ✅ Zero content loss or broken links

**Time Estimate:** 2-4 hours with parallel agent execution vs. 8-12 hours manual work

This plan addresses all critical issues while maintaining the modernization benefits achieved so far.

---

## 🚀 PARALLEL AGENT LAUNCH INSTRUCTIONS

### Execute 5 Blog-Post-Migration Agents Simultaneously:

Use the Task tool with `subagent_type: blog-post-migration` and launch all 5 with these prompts:

#### **Agent 1 Prompt:**
```
CRITICAL CONTENT RECOVERY - Cloud Migration Posts

ASSIGNED FILES:
- plotting-paths-to-cloud-migration/index.html → _posts/2020-03-23-plotting-paths-to-cloud-migration.md  
- cloud-strategy-design-and-automation/index.html → _posts/2020-03-19-cloud-strategy-design-and-automation.md

TASK: Extract real article content from HTML files and replace placeholder text in Jekyll posts.

CRITICAL REQUIREMENTS:
- Extract main content (skip headers/footers/navigation/comments)
- Convert HTML to Markdown preserving ALL formatting, links, images, blockquotes
- Replace placeholder text - keep frontmatter EXACTLY as-is
- PRESERVE PERMALINKS: Do not change dates, filenames, or URL structure
- Maintain all links and references

Report completion status.
```

#### **Agent 2 Prompt:**
```
CRITICAL CONTENT RECOVERY - DDD & EventStorming Posts

ASSIGNED FILES:
- eventstorming-team-flow/index.html → _posts/2019-05-13-eventstorming-team-flow.md
- realtime-retro-eddd/index.html → _posts/2019-01-22-realtime-retro-eddd.md

TASK: Extract real article content from HTML files and replace placeholder text in Jekyll posts.

CRITICAL REQUIREMENTS:
- Extract main content (skip headers/footers/navigation/comments)
- Convert HTML to Markdown preserving ALL formatting, links, images, blockquotes
- Replace placeholder text - keep frontmatter EXACTLY as-is
- PRESERVE PERMALINKS: Do not change dates, filenames, or URL structure
- Maintain all links and references

Report completion status.
```

#### **Agent 3 Prompt:**
```
CRITICAL CONTENT RECOVERY - Community & Design Posts

ASSIGNED FILES:
- bdd-is-a-centered-rather-than-a-bounded-community/index.html → _posts/2015-03-28-bdd-is-a-centered-rather-than-a-bounded-community.md
- good-design-is-people-centered-design-quotes-part-5/index.html → _posts/2015-02-09-good-design-is-people-centered.md

TASK: Extract real article content from HTML files and replace placeholder text in Jekyll posts.

CRITICAL REQUIREMENTS:
- Extract main content (skip headers/footers/navigation/comments)
- Convert HTML to Markdown preserving ALL formatting, links, images, blockquotes
- Replace placeholder text - keep frontmatter EXACTLY as-is
- PRESERVE PERMALINKS: Do not change dates, filenames, or URL structure
- Maintain all links and references

Report completion status.
```

#### **Agent 4 Prompt:**
```
CRITICAL CONTENT & COMMENT RECOVERY - Technical Posts

ASSIGNED FILES:
- persisting-value-objects/index.html → _posts/2015-01-22-persisting-value-objects.md

ADDITIONAL TASK: Fix Disqus comments on historical posts

REQUIREMENTS:
1. Extract content following same process as other agents
2. Fix why historical static HTML posts lost Disqus comments
3. Restore comment functionality without breaking Giscus on new posts
4. PRESERVE PERMALINKS and existing comment history

Report completion of both content extraction and comment fixes.
```

#### **Agent 5 Prompt:**
```
CRITICAL SYSTEM FUNCTIONALITY - Related Posts & Validation

TASKS:
1. Restore related posts cross-referencing (was disabled during Jekyll modernization)
2. Ensure related posts appear on all post types  
3. Validate hybrid comment system (no double-loading)
4. Test Giscus integration on new posts (2025+)
5. Verify overall site functionality

REQUIREMENTS:
- Do not modify content files or frontmatter
- Focus only on system functionality
- Ensure related posts integrate with tag system
- PRESERVE all permalinks and functionality

Report all functionality restored and validation results.
```

### Launch Instructions:
1. Copy each prompt above
2. Use Task tool with `subagent_type: blog-post-migration` 
3. Launch all 5 agents simultaneously in a single message
4. Monitor progress of all agents working in parallel

This approach maximizes speed while ensuring specialized expertise handles each aspect of the recovery.
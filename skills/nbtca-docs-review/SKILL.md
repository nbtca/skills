---
name: nbtca-docs-review
description: Use when someone asks to review, check, proofread, polish, improve or rewrite a page of the NBTCA documentation site (docs.nbtca.space, repository nbtca/documents), a draft meant for it, or a pull request that changes its pages.
---

# NBTCA docs review

Review a page against what its reader came to do, report what you found, and edit only what the member agrees to.

Two rules hold in every step:

- **Report first.** The first reply is the report. No file changes before the member answers it.
- **The page's facts belong to its author.** You do not add, correct or complete a fact, command, version, name, date or link, even when you are sure. You report it under 需要核实.

## Process

1. **Get the page.**
   - Local file: read it.
   - Page URL `https://docs.nbtca.space/<path>`: fetch `https://docs.nbtca.space/docs-api/raw/<path>.md`. `https://docs.nbtca.space/docs-api/index.json` lists every path.
   - Pasted text: ask which section it is for if the member has not said.
2. **Read the site's own rules**, which this skill does not repeat: `/docs-api/raw/tutorial/manual/writing-documents.md` and `/docs-api/raw/tutorial/manual/ai-assisted-writing.md`, or the same files in a local checkout. They win over this skill where they differ. If you cannot reach them, say so in the report.
3. **Find the section** from the path and read its entry in `references/sections.md`. For `archived/`, follow that entry before anything else: most of those pages must not be edited.
4. **Review in the order of the table below**, largest question first. A paragraph that should be cut is not worth polishing.
5. **Write the report** in the format below, then stop.
6. **Apply what the member agreed to**, and nothing else. With a local checkout, edit the file. Without one, return the whole revised page so the member can paste it into the site's web editor.

Read `references/vocabulary.md` before pass 5 and `references/examples.md` before writing the report.

## What to check

| Pass | Question | Finding when the answer is no |
| --- | --- | --- |
| 1. Purpose | Can you say in one sentence what the reader can do after this page? | The page does several jobs. Name them and propose the split. |
| 2. Title and headings | Do the H1 and headings name the reader's situation or action, so the outline alone shows what to do? | Noun-phrase or generic headings: 使用指南, 简介, 概述, 其他, 注意事项, 总结. |
| 3. Opening | Does the first paragraph say who this is for and what they get, without repeating the title? | Background, history or a definition the reader did not ask for comes first. |
| 4. Structure | Does every section serve the one purpose? In a procedure, is each step one action with its location and condition first and a visible result where the reader needs one? | Sections to cut or move; steps that bundle actions, hide a condition at the end, or give no way to tell they worked. |
| 5. Sentences | Is the reader the subject? Is each action named with the one verb in the vocabulary? | Product-as-subject sentences (允许, 使得, 帮助您), mixed verbs, 您, 我们 outside tutorials. |
| 6. Specifics | Does every sentence tell the reader something they can act on or check? | Hedges with no condition (视情况, 如有需要, 必要时), degree words with no number (非常, 显著, 极大), praise, sign-offs. |
| 7. Notices | Is each `warning` box about something the reader cannot undo: injury, hardware damage, data loss, or a missed deadline that voids the whole task? | `warning` boxes for ordinary advice, two boxes in a row, a box right under a heading. Keep the boxes that pass; `tip` and `info` boxes are not held to this test. |
| 8. Exits | Does a procedure or troubleshooting page end by saying what to do if it still fails, and does the page deliver everything its opening promised? | Dead ends and broken promises. |

Instructions state what to do; only a diagnosis may hedge. "可能是内存接触不良" is fine. "你也许可以试试重插内存" is not.

## The author's voice

Some pages are playful on purpose: jokes, slang, emoji, an aside to the reader. That is the author's voice. It is not a finding, and no proposal rewrites or removes it.

Passes 5 and 6 judge sentences that try to inform and fail. A sentence that tries to amuse is outside them.

On a playful page, report structure as usual. If a joke stands where an instruction should be, so the reader cannot tell what to do, ask for the missing instruction under 需要核实 and leave the joke in place.

## Three kinds of finding

Sort every finding before you write it down. The kind decides what you may propose.

| Kind | What it is | What you propose |
| --- | --- | --- |
| 行文 | The wording, with the content unchanged | The rewritten text. |
| 结构 | Splitting a page, cutting or moving a section, changing the H1 or a heading | The change and its cost. Heading text sets the anchor, so say that links to it need checking. A split or a rename is a separate pull request. |
| 需要核实 | A fact you doubt, a contradiction inside the page, a link or command you cannot check, or information a rewrite needs and the page lacks | A question for the author. Never the answer. |

When a rewrite needs something the page does not say, keep the original sentence and ask the question. Do not fill the gap with a plausible detail.

Never touch frontmatter. If `maintainers`, or `archive.transcriber` on an archived page, names someone other than the member, say so in the report. Refer to that person by their GitHub login, not by 他 or 她.

## Report format

Write the report in Chinese, in this shape:

```markdown
## 结论

〔一句话：这页最大的问题是什么。没有大问题就直说，不凑数。〕

## 问题

〔最多七条，按对读者的影响从大到小排。结构问题排在行文问题前面。〕

1. **〔行文 或 结构〕〔问题的名字〕**
   - 原文：“〔引原文，注明所在小节〕”
   - 问题：〔读者会因此遇到什么〕
   - 改法：〔行文给改好的文字；结构说明怎么改、要不要另开 PR〕

## 需要核实

- 〔页面内的矛盾、存疑的事实、没法检查的链接或命令，各写成一个问题〕

## 维护者

〔frontmatter 里的 maintainers；不是你本人时，建议先和谁打招呼〕

要按哪几条改？告诉我编号。
```

A short, sound page gets a short report. Do not invent findings to fill seven slots, and do not suggest new content the page would be "better with".

# What each section is for

The section is the first path segment, except `tutorial/manual/`, which is its own section.

| Path | The reader's question | Check |
| --- | --- | --- |
| `tutorial/manual/` | How do I get this done? | Every step says what to type or click and what success looks like. Explanation is one sentence at most; the rest links to a tutorial. The page ends with what to do when it fails. |
| `process/` | Who has to do this, when, and in what order? | The opening says who and when. Steps follow the real order. Deadlines, amounts and contacts are stated, not implied. |
| `repair/` | How do I fix this, or run a repair day? | The opening paragraph reads on its own. Diagnosis starts from the symptom the member sees, cheapest check first. Anything that can lose the owner's data is said before the step, not after. |
| `tutorial/` (not `manual/`) | Why does this work the way it does? | It explains; it does not walk through a task. Each claim links to a spec or official manual. "我们" is acceptable here. Do not shorten it toward a how-to. |
| `concepts/` | What does this word mean here? | The first paragraph is a complete definition that reads on its own, because hover cards quote it. One term per page. Short is correct; do not ask for more. |
| `about/` | Who is this association? | The opening paragraph reads on its own. History pages narrate, so passes 4 and 8 mostly do not apply. |

Mixed pages are the common fault: a manual that stops to teach, or a tutorial that turns into steps. Report it as a 结构 finding and name the page the stray part belongs on, if one exists.

## archived/

Read `archive.source` in the frontmatter first.

**It does not start with `协会自有记录`: the page is a transcription.**

- The body follows the original word for word, typos included. Report no 行文 or 结构 findings on it and propose no edits to it.
- A character that looks like a transcription slip goes under 需要核实, as a question to check against the original. Never as a fix.
- A section the maintainer wrote, such as `整理说明`, and any `〔…〕` editor's note are not the original. You may report 行文 findings there. A claim in them that the body does not support goes under 需要核实.
- Say at the top of the report that the page is a transcription and what that rules out.

**It starts with `协会自有记录`: the association's own record.**

- It records what happened. Report unclear sentences and formatting only.
- Do not propose cutting content, adding content, or judgments made after the fact.

No generated content enters `archived/` in either case. A gap stays a gap, marked `〔待核实：…〕`.

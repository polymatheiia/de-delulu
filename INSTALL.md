# How to install

de-delulu was built and tested in **Claude Code** with Claude Sonnet 5.5 and Claude Opus 5.5. That is the only place where all of it works: the rules are added at the start of every session and again every 15 prompts, and the detailed skill loads when warning signs converge.

On **claude.ai** the same rules are pasted into your preferences once. They are not re-added in a long chat.

In **other agents** the rules are pasted text in a rules file. Nothing there was tested.

<details>
<summary><strong>Claude Code</strong> (recommended, tested)</summary>

### Install

```bash
claude plugin marketplace add polymatheiia/de-delulu
claude plugin install de-delulu@de-delulu
```

Restart Claude Code. The rules apply from the next session. There is no command to type.

To try it for one session without installing:

```bash
git clone https://github.com/polymatheiia/de-delulu
claude --plugin-dir ./de-delulu
```

### Verify

```bash
claude plugin list
```

`de-delulu` should be listed as enabled. `claude plugin details de-delulu@de-delulu` shows what it provides (two hooks, one skill). To see the exact text a session receives, run the hook from a clone:

```bash
bash de-delulu/hooks/inject session-start </dev/null
```

### Settings (optional)

Three environment variables, set in the `env` block of `~/.claude/settings.json` or in the shell that starts Claude Code:

```json
{
  "env": {
    "DE_DELULU_LEVEL": "plain",
    "DE_DELULU_EVERY": "15",
    "DE_DELULU_EVERYDAY": "on"
  }
}
```

What each one does is in [Settings](README.md#settings). The values above are the defaults.

### Update

```bash
claude plugin marketplace update de-delulu
claude plugin update de-delulu@de-delulu
```

Restart Claude Code. `claude plugin update` skips a plugin whose `version` has not changed. In a fork, bump `version` in `.claude-plugin/plugin.json` after editing the rules.

### Uninstall

```bash
claude plugin uninstall de-delulu@de-delulu
claude plugin marketplace remove de-delulu
```

Or keep it installed and turn it off: `claude plugin disable de-delulu@de-delulu`.

### Change the rules

Fork the repository and edit `core/`. Then run `bash scripts/build-claude-ai` and `bash tests/run-all.sh`. Swap your fork in:

```bash
claude plugin uninstall de-delulu@de-delulu      # fork and upstream share both names
claude plugin marketplace remove de-delulu
claude plugin marketplace add <your-username>/de-delulu
claude plugin install de-delulu@de-delulu
```

An edited rule is untested until the scenario suite has been run against it. See [Running the tests](README.md#running-the-tests).

</details>

<details>
<summary><strong>claude.ai</strong> (web, desktop and mobile apps)</summary>

### Install

1. Open [`claude-ai/preferences.md`](claude-ai/preferences.md).
2. Copy the **Plain** block, or the **Strict** block for the stricter register. Copy only what is inside the fence.
3. In claude.ai, open **Settings → Profile** and paste it into the personal-preferences field. Save.

Preferences belong to the account, so the Claude desktop and mobile apps use them too.

**Optional, the detailed skill.** The `skills/de-delulu` folder can be uploaded as a skill. Zip it first:

```bash
git clone https://github.com/polymatheiia/de-delulu
cd de-delulu/skills && zip -r de-delulu.zip de-delulu
```

Upload `de-delulu.zip` in the Skills section of the claude.ai settings. Without the skill, the pasted rules still work. They only lose the step-by-step guidance for when several signs converge.

### Verify

Reopen the preferences field. The text should end with the **Risk of harm** section. If it stops earlier, the field cut it off. Use the Plain block, which is shorter, or report the field's length limit as an issue.

### Update

Paste the new block over the old one. The block is regenerated from `core/` with every release, so the copy in your settings does not update itself.

### Uninstall

Delete the block from the preferences field. If you uploaded the skill, remove it in the Skills settings.

### Limits on claude.ai

claude.ai cannot re-add the rules during a conversation. Instructions are followed less closely as a chat gets long, so start a new chat when one theme has run long. Whether claude.ai loads the uploaded skill at the right moment was not tested.

</details>

<details>
<summary><strong>Other agents: Codex, Gemini CLI, Cursor, OpenCode, GitHub Copilot, Zed</strong> (not tested)</summary>

These agents get the same rule text through their always-on rules file. Compared with Claude Code, you lose three things:

- **No re-injection.** The rules are read once, at the start of the session.
- **No switch.** You choose Plain or Strict when you paste, instead of with `DE_DELULU_LEVEL`.
- **No evidence.** None of these agents or their models were tested. The rules were written for Claude and may behave differently elsewhere.

### Install the rules

Choose the rules file for your agent. These paths come from each tool's own documentation and were not checked by this project:

| Agent | Rules file |
|---|---|
| Codex | `~/.codex/AGENTS.md` |
| Gemini CLI | `~/.gemini/GEMINI.md` |
| OpenCode | `~/.config/opencode/AGENTS.md` |
| Zed | `~/.config/zed/AGENTS.md` |
| GitHub Copilot | `.github/copilot-instructions.md` in each project |
| Cursor | **Settings → Rules → User Rules** (paste by hand), or a project rule in `.cursor/rules/` with `alwaysApply: true` |

Append the Plain block between two markers, so that it can be found and removed later:

```bash
git clone https://github.com/polymatheiia/de-delulu
f=~/.codex/AGENTS.md          # your agent's rules file
{ echo '<!-- de-delulu:start -->'
  awk '/^## Plain/{p=1;next} /^## Strict/{p=0} p' de-delulu/claude-ai/preferences.md | sed '/^````/d'
  echo '<!-- de-delulu:end -->'; } >> "$f"
```

For the Strict block, replace the `awk` line with `awk '/^## Strict/{p=1;next} p' de-delulu/claude-ai/preferences.md | sed '/^````/d'`.

### Install the skill (optional)

With the [`skills`](https://www.npmjs.com/package/skills) CLI:

```bash
npx skills add polymatheiia/de-delulu        # this workspace
npx skills add polymatheiia/de-delulu -g     # all projects
```

Without it, copy the folder to the path your agent scans for skills:

```bash
mkdir -p ~/.agents/skills            # or ~/.cursor/skills, ~/.copilot/skills, …
cp -R de-delulu/skills/de-delulu ~/.agents/skills/
```

### Verify

```bash
grep -c 'de-delulu:start' "$f"       # 1 means installed once
npx skills list                      # if the skill was added with the CLI
```

### Update

Remove the block (below), pull the clone (`git -C de-delulu pull`), and append it again. For the skill, run `npx skills update de-delulu`, or copy the folder again.

### Uninstall

```bash
sed -i '/<!-- de-delulu:start -->/,/<!-- de-delulu:end -->/d' "$f"     # macOS: sed -i ''
npx skills remove de-delulu          # or delete the copied skill folder
```

</details>

## Install with an agent

Paste this into Claude Code or another coding agent:

```text
Install the de-delulu plugin from https://github.com/polymatheiia/de-delulu. Follow the repo's INSTALL.md for my agent, and read AGENTS.md first.
```

## How it loads

| Where | When the rules are read | Detailed skill |
|---|---|---|
| Claude Code | At the start of every session (also after `/clear` and compaction) and again every 15 prompts | Loaded by the model when several warning signs appear together, or on a statement of intent to harm |
| claude.ai | At the start of every chat, from your preferences | Only if uploaded. Loading was not tested |
| Other agents | Once per session, from the rules file | Only if installed. Loading was not tested |

In Claude Code, installing the plugin is enough: the rules are on until you disable or uninstall it.

## Troubleshooting

**`claude plugin marketplace add` fails.** Use the `owner/repo` form: `polymatheiia/de-delulu`. A local path must point at the repository root, not at `.claude-plugin/`.

**The plugin is installed, but replies don't follow the rules.** Restart Claude Code, because hooks are read at startup. Check that `claude plugin list` shows it as enabled. In a very long session, lower `DE_DELULU_EVERY` or start a new conversation.

**`claude plugin update` changed nothing.** Run `claude plugin marketplace update de-delulu` first. The update is skipped when `version` has not changed.

**The claude.ai preferences field cut the block off.** Use the Plain block. If it still does not fit, open an issue with the field's limit.

**A hook error appears at session start.** The hook needs `bash`. It always exits 0 and never blocks a prompt. Run `bash hooks/inject session-start </dev/null` from a clone to see its output.

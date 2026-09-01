# Agent Skills

Personal agent skills for software development workflows.

## Skills

- [change-walkthrough](./skills/engineering/change-walkthrough/SKILL.md): Walk through code changes conversationally, one behavioral topic at a time.

## Install

Install interactively with the Agent Skills installer:

```bash
npx skills@latest add rekram1-node/skills
```

## Local Development

Clone the repository, then link its skills into the global skill directories used by OpenCode, Claude Code, and other Agent Skills-compatible tools:

```bash
npm run link
```

The links point into this repository, so local edits are available immediately. To print the skills discovered by the linker, run `npm run list`.

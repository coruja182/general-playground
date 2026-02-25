# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is a general-purpose playground repository for learning, practicing new skills, and experimenting with various technologies. It contains exercises, practice projects, and exploratory code without a specific language or framework focus.

## Repository Structure

The repository is organized with:
- Root-level documentation (README.md, LICENSE)
- Exercise directories (e.g., `exercicio-06/`) containing practice projects
- Each exercise may have its own setup scripts and structure

## Setup Scripts

Exercise directories often contain `setup.sh` scripts that:
1. Create the initial file structure for the exercise
2. Generate sample files for practice
3. **Automatically delete themselves after execution** (see line 50 in exercicio-06/setup.sh)

When working with setup scripts:
- They are meant to be run once to initialize an exercise
- After execution, the script removes itself to keep the workspace clean
- Do not attempt to re-run setup scripts after they've been deleted

## Working with This Repository

- Exercises are self-contained within their directories
- No centralized build, test, or lint commands (varies by exercise)
- Each exercise or project may use different languages and tools
- Check individual directories for language-specific dependencies or requirements

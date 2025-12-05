# Trusted Treks – GPT Suite Repository  
AI Orchestration Layer (All 8 Agents)

## Purpose
This repository contains the *entire AI nervous system* for Trusted Treks.  
All 8 GPT agents are defined here, each with its own:

- Role
- Responsibilities
- Personality
- System prompts
- Boundaries
- Capabilities
- Allowed tasks
- Inter-agent communication rules

This repo is the **master control layer** for the AI-driven operation of Trusted Treks.

---

## Folder Structure
Each agent has its own directory:

- `/gpt1_operations_controller`
- `/gpt2_dispatch_engine`
- `/gpt3_finance_ai`
- `/gpt4_safety_risk_ai`
- `/gpt5_marketing_ai`
- `/gpt6_route_ai`
- `/gpt7_employee_coach`
- `/gpt8_founder_ai`

Each folder will contain:
- `system_prompt.md`
- `personality.md`
- `capabilities.md`
- `limitations.md`
- `allowed_actions.md`

---

## Which Agents Are Allowed to Access This Repo
- GPT-8 Founder AI (master agent)
- GPT-1 Operations Controller
- GPT-2 Dispatch Engine
- GPT-3 Finance AI
- GPT-4 Safety AI
- GPT-5 Marketing AI
- GPT-6 Routing AI
- GPT-7 Employee Coach

**All 8 agents CAN read and write here.**  
This is the *only* repo where full cross-agent access is allowed.

---

## Allowed Operations
AI may:
- Create system prompt files  
- Update agent personality files  
- Define capabilities & tools  
- Document cross-agent communication  
- Build prompt stacks / chains  
- Create JSON configuration files  
- Improve clarity of agent roles  
- Add new documentation anytime  

---

## Forbidden Operations
AI may NOT:
- Change folder names  
- Create or delete agents without user approval  
- Add external API keys  
- Modify other repos from here  
- Generate code intended for production servers  
- Make secret-bearing files  

---

## Cross-Repo Awareness
This repo **can reference every other repo**, because it serves as:

### **The AI routing layer that tells each agent where to get information.**

HOWEVER:  
➡ It can **NOT** modify other repos’ files.  
➡ It can **NOT** move or delete files in other repos.

---

## Key Principles for AI Behavior
1. **Clarity over cleverness** — always be explicit and documented.  
2. **Consistency above all** — all agents must follow the same rules.  
3. **Stability first** — this is a foundational system, not experimental.  
4. **Ask if unsure** — one clarification question is allowed.  

---

## Purpose Summary
This repository defines the AI architecture that runs Trusted Treks:  
Dispatch → Routing → Finance → Safety → Marketing → Ops → HR → Founder.

Every decision, every automation, every recommendation starts here.  
This is the **Trusted Treks AI Command Center.**

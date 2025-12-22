;;; NEUROSYM.scm — orbital-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define-module (orbital-ssg neurosym)
  #:export (symbolic-structure neural-integration reasoning-patterns
            knowledge-representation))

;; Symbolic Structure of the Project
(define symbolic-structure
  '((domain . "static-site-generation")
    (abstraction-layers
      (layer-0 . "Operating system and binaries")
      (layer-1 . "SSG CLI tools (zola, hakyll, etc.)")
      (layer-2 . "Deno adapters (this project)")
      (layer-3 . "MCP protocol interface")
      (layer-4 . "AI agent integration"))

    (type-hierarchy
      (adapter
        (properties . (name language description))
        (methods . (connect disconnect isConnected))
        (tools . (list-of tool)))
      (tool
        (properties . (name description inputSchema))
        (method . execute))
      (result
        (properties . (success stdout stderr code))))

    (invariants
      ("Every adapter must export required symbols"
       "Every tool must have a valid inputSchema"
       "All user inputs must be sanitized"
       "Connection must succeed before tool execution"))))

;; Neural Integration Points
(define neural-integration
  '((llm-interaction
      (input . "Natural language requests")
      (processing . "Tool selection and parameter extraction")
      (output . "Structured MCP tool calls"))

    (embedding-candidates
      (adapter-descriptions . "For semantic similarity matching")
      (tool-descriptions . "For operation selection")
      (error-messages . "For troubleshooting guidance"))

    (learning-signals
      (success-rate . "Track tool execution success")
      (common-errors . "Identify frequent failure modes")
      (usage-patterns . "Optimize tool selection"))))

;; Reasoning Patterns
(define reasoning-patterns
  '((tool-selection
      (input . "User intent + available adapters")
      (process . ("Identify target SSG from context"
                  "Map operation to tool name"
                  "Extract parameters from request"
                  "Validate against inputSchema"))
      (output . "MCP tool invocation"))

    (error-recovery
      (input . "Failed tool execution")
      (process . ("Parse error message"
                  "Identify error category"
                  "Lookup troubleshooting guide"
                  "Suggest remediation"))
      (output . "Corrective action or user guidance"))

    (multi-step-planning
      (input . "Complex site management request")
      (process . ("Decompose into atomic operations"
                  "Order by dependencies"
                  "Execute with checkpoints"
                  "Rollback on failure"))
      (output . "Completed workflow or partial state"))

    (adapter-discovery
      (input . "Unknown SSG or language")
      (process . ("Search adapter registry"
                  "Match by language or name"
                  "Verify availability"
                  "Suggest alternatives"))
      (output . "Matched adapter or alternatives"))))

;; Knowledge Representation
(define knowledge-representation
  '((ontology
      (ssg (isa . "software")
           (purpose . "generate static websites")
           (input . "source content")
           (output . "HTML/CSS/JS files"))

      (adapter (isa . "interface")
               (wraps . ssg)
               (exposes . "MCP tools"))

      (tool (isa . "function")
            (belongs-to . adapter)
            (executes . "SSG command")))

    (relations
      (adapter-wraps-ssg . "1:1 mapping")
      (adapter-has-tools . "1:N composition")
      (tool-requires-connection . "precondition")
      (tool-produces-result . "postcondition"))

    (facts
      ("28 SSG adapters available"
       "17 programming languages supported"
       "All adapters follow MCP protocol"
       "Input sanitization prevents injection"
       "Deno runtime provides security sandbox"))

    (heuristics
      ("Prefer language-native SSGs for that ecosystem"
       "Rust SSGs (zola, cobalt) are fastest"
       "Haskell SSGs (hakyll) offer most flexibility"
       "Julia SSGs best for academic/scientific content"
       "Start with zola_version to verify installation"))))

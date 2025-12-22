;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; META.scm — orbital-ssg

(define-module (orbital-ssg meta)
  #:export (architecture-decisions development-practices design-rationale
            language-stack tooling-requirements))

(define architecture-decisions
  '((adr-001
     (title . "RSR Compliance")
     (status . "accepted")
     (date . "2025-12-15")
     (context . "Project in the hyperpolymath ecosystem")
     (decision . "Follow Rhodium Standard Repository guidelines")
     (consequences . ("RSR Gold target" "SHA-pinned actions" "SPDX headers" "Multi-platform CI")))
    (adr-002
     (title . "Deno Runtime for Adapters")
     (status . "accepted")
     (date . "2025-12-17")
     (context . "Need cross-platform runtime for SSG adapters")
     (decision . "Use Deno as primary JavaScript runtime")
     (consequences . ("TypeScript support" "Secure by default" "No node_modules" "Native ES modules")))
    (adr-003
     (title . "Input Sanitization Strategy")
     (status . "accepted")
     (date . "2025-12-22")
     (context . "Prevent code injection in language-specific adapters")
     (decision . "Implement language-specific sanitization functions")
     (consequences . ("Julia string sanitization" "Lisp string sanitization" "Identifier validation")))
    (adr-004
     (title . "MCP Protocol Integration")
     (status . "accepted")
     (date . "2025-12-17")
     (context . "Standardize adapter interface")
     (decision . "Each adapter exports MCP-compatible tools array")
     (consequences . ("Unified tool schema" "Hub synchronization" "Protocol versioning")))))

(define development-practices
  '((code-style
     (languages . ("javascript" "typescript" "scheme"))
     (formatter . "deno fmt")
     (linter . "deno lint"))
    (security
     (sast . "CodeQL")
     (credentials . "env vars only")
     (sanitization . "language-specific escape functions")
     (dependency-scanning . "dependabot"))
    (testing
     (framework . "deno test")
     (coverage-minimum . 70)
     (e2e . "integration tests per adapter"))
    (versioning
     (scheme . "SemVer 2.0.0")
     (changelog . "conventional commits"))))

(define design-rationale
  '((why-rsr "RSR ensures consistency, security, and maintainability.")
    (why-deno "Deno provides security, TypeScript, and modern ES modules.")
    (why-mcp "Model Context Protocol enables AI-native tooling integration.")))

(define language-stack
  '((primary . "JavaScript/Deno")
    (adapters . "JavaScript ES6 modules")
    (configuration . "Scheme (.scm)")
    (documentation . "AsciiDoc (.adoc)")
    (automation . ("just" "must" "nickel"))))

(define tooling-requirements
  '((runtime . ((name . "deno") (version . ">= 1.40")))
    (task-runner . ((name . "just") (version . ">= 1.0")))
    (container . ((name . "podman") (version . ">= 4.0")))
    (version-manager . ((name . "asdf") (plugins . ("deno" "just"))))))

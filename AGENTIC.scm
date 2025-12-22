;;; AGENTIC.scm — orbital-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define-module (orbital-ssg agentic)
  #:export (agent-capabilities mcp-integration tool-patterns
            autonomous-workflows safety-boundaries))

;; Agent Capabilities
(define agent-capabilities
  '((primary-functions
      ("Static site generation across 28 SSG tools"
       "Content building and optimization"
       "Development server management"
       "Site validation and checking"
       "Multi-language SSG orchestration"))

    (supported-operations
      (init . "Initialize new SSG projects")
      (build . "Build static sites from source")
      (serve . "Start development servers")
      (check . "Validate site structure and links")
      (deploy . "Deploy to hosting platforms")
      (clean . "Remove build artifacts"))

    (language-coverage
      (total . 17)
      (adapters . 28)
      (languages . ("rust" "haskell" "julia" "clojure" "elixir"
                    "scala" "racket" "lisp" "fsharp" "crystal"
                    "nim" "kotlin" "d" "swift" "tcl" "ocaml" "erlang")))))

;; MCP Protocol Integration
(define mcp-integration
  '((protocol-version . "2024-11-05")
    (transport . "stdio")

    (tool-schema
      (name . "string (required)")
      (description . "string (required)")
      (inputSchema . "JSON Schema object")
      (execute . "async function"))

    (connection-lifecycle
      (connect . "Verify SSG binary availability")
      (isConnected . "Check current connection state")
      (disconnect . "Clean up resources"))

    (error-handling
      (success . "{ success: true, stdout, stderr, code }")
      (failure . "{ success: false, stderr, code }"))))

;; Tool Patterns
(define tool-patterns
  '((naming-convention
      "<ssg>_<operation>"
      (examples . ("zola_build" "hakyll_serve" "franklin_optimize")))

    (common-operations
      (init (params . ("path" "template?" "force?"))
            (returns . "Operation result with stdout/stderr"))
      (build (params . ("path?" "outputDir?" "drafts?"))
             (returns . "Build result"))
      (serve (params . ("path?" "port?" "host?"))
             (returns . "Server process info"))
      (check (params . ("path?" "internal?"))
             (returns . "Validation result"))
      (version (params . ())
               (returns . "SSG version info")))

    (input-sanitization
      (julia-strings . "Escape: \\ \" $ `")
      (lisp-strings . "Escape: \\ \"")
      (identifiers . "Allow only: a-zA-Z0-9_"))))

;; Autonomous Workflows
(define autonomous-workflows
  '((site-creation
      (description . "Create and initialize a new static site")
      (steps . ("Select SSG based on requirements"
                "Run init tool with project path"
                "Verify initialization success"
                "Optionally start development server")))

    (content-publishing
      (description . "Build and deploy static content")
      (steps . ("Check site for errors"
                "Build optimized output"
                "Deploy to configured host"
                "Verify deployment")))

    (multi-site-management
      (description . "Manage multiple SSG projects")
      (steps . ("Enumerate connected adapters"
                "Check each site status"
                "Build outdated sites"
                "Report overall status")))

    (adapter-health-check
      (description . "Verify all adapters are functional")
      (steps . ("Iterate all adapters"
                "Call connect() on each"
                "Call version tool"
                "Report availability")))))

;; Safety Boundaries
(define safety-boundaries
  '((input-validation
      (required . "All user inputs MUST be sanitized")
      (forbidden . ("Direct shell command concatenation"
                    "Unsanitized string interpolation"
                    "eval() or equivalent")))

    (execution-limits
      (timeout . "Default 120 seconds per operation")
      (concurrency . "Single operation per adapter at a time")
      (resources . "Subprocess spawning only"))

    (data-handling
      (no-secrets . "Never store credentials in code")
      (env-vars . "Use environment variables for sensitive data")
      (logging . "Never log secrets or PII"))

    (scope-restrictions
      (filesystem . "Limited to project directories")
      (network . "Only SSG-specific operations")
      (execution . "Only documented SSG commands"))))

;;; PLAYBOOK.scm — orbital-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define-module (orbital-ssg playbook)
  #:export (workflows recipes troubleshooting quick-reference))

;; Development Workflows
(define workflows
  '((development
      (setup
        ("Install asdf and plugins: asdf plugin add deno && asdf plugin add just"
         "Run: asdf install"
         "Verify: just check"))
      (daily
        ("Pull latest: git pull"
         "Run tests: just test"
         "Lint code: just lint"
         "Format code: just fmt")))

    (adding-adapter
      (steps
        ("Create adapters/<name>.js with SPDX header"
         "Export: name, language, description constants"
         "Implement: connect(), disconnect(), isConnected()"
         "Add sanitization function for target language"
         "Define tools array with MCP-compatible schemas"
         "Add tests in tests/<name>.test.js"
         "Update adapters/README.md table"
         "Run: just test && just lint")))

    (releasing
      (steps
        ("Update version in STATE.scm and deno.json"
         "Update CHANGELOG.md"
         "Run full test suite: just test-all"
         "Create git tag: git tag v<version>"
         "Push with tags: git push --tags")))

    (security-review
      (checklist
        ("Review all sanitization functions"
         "Check for unsanitized user input in string interpolation"
         "Verify no shell command concatenation"
         "Run CodeQL analysis: just security-scan"
         "Check for hardcoded credentials"
         "Verify SPDX headers present")))))

;; Common Recipes (see cookbook.adoc for full details)
(define recipes
  '((just-commands
      (build . "just build")
      (test . "just test")
      (test-all . "just test-all")
      (lint . "just lint")
      (fmt . "just fmt")
      (check . "just check")
      (security-scan . "just security-scan")
      (container . "just container"))

    (must-recipes
      (audit . "must audit")
      (deps . "must deps")
      (sync . "must sync"))

    (deno-commands
      (run-adapter . "deno run --allow-run adapters/<name>.js")
      (test-single . "deno test tests/<name>.test.js")
      (coverage . "deno test --coverage=coverage/"))))

;; Troubleshooting Guide
(define troubleshooting
  '((adapter-not-connecting
      (symptom . "connect() returns false")
      (causes . ("Target SSG not installed"
                 "Binary not in PATH"
                 "Permission denied"))
      (solutions . ("Install target SSG"
                    "Add to PATH: export PATH=$PATH:/path/to/bin"
                    "Check executable permissions")))

    (sanitization-errors
      (symptom . "Invalid input rejected")
      (causes . ("Special characters in input"
                 "Empty or null values"))
      (solutions . ("Check input format"
                    "Review sanitization function"
                    "Provide valid identifier/string")))

    (test-failures
      (symptom . "Tests fail locally but pass in CI")
      (causes . ("Different Deno version"
                 "Missing environment variables"
                 "OS-specific behavior"))
      (solutions . ("Run: asdf install to match .tool-versions"
                    "Check .env.example for required vars"
                    "Use container: just container-test")))

    (ci-pipeline-failures
      (symptom . "GitHub Actions workflow fails")
      (causes . ("Permissions issue"
                 "SHA-pinned action outdated"
                 "Network timeout"))
      (solutions . ("Check workflow permissions block"
                    "Update action SHA in workflow file"
                    "Re-run workflow")))))

;; Quick Reference
(define quick-reference
  '((file-locations
      (adapters . "adapters/*.js")
      (tests . "tests/*.test.js")
      (config . "deno.json")
      (ci . ".github/workflows/")
      (docs . "*.adoc"))

    (key-commands
      ("just test" . "Run all tests")
      ("just lint" . "Lint all code")
      ("just fmt" . "Format all code")
      ("just check" . "Verify project health")
      ("just container" . "Build container image"))

    (adapter-exports
      (required . ("name" "language" "description" "connect" "disconnect" "isConnected" "tools"))
      (optional . ("version" "homepage")))))

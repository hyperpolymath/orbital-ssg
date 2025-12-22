;;; STATE.scm — orbital-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define-module (orbital-ssg state)
  #:export (metadata current-position components blockers-and-issues
            critical-next-actions roadmap session-history state-summary))

(define metadata
  '((version . "0.1.0") (updated . "2025-12-17") (project . "orbital-ssg")))

(define current-position
  '((phase . "v0.2 - Security Hardening")
    (overall-completion . 40)
    (components ((rsr-compliance ((status . "complete") (completion . 100)))
                 (security-fixes ((status . "complete") (completion . 100)))
                 (adapter-sanitization ((status . "complete") (completion . 100)))))))

(define blockers-and-issues
  '((critical ())
    (high-priority ())
    (resolved
      (("Code injection in Julia adapters" . "2025-12-22")
       ("Code injection in Lisp adapters" . "2025-12-22")
       ("Template placeholders in SECURITY.md" . "2025-12-22")))))

(define critical-next-actions
  '((immediate (("Verify CI/CD" . high) ("Add adapter tests" . high)))
    (this-week (("Expand tests" . medium) ("Add input validation tests" . medium)))
    (next-sprint (("Add more adapters" . low) ("Documentation improvements" . low)))))

(define roadmap
  '((v0.3 (title . "Testing & Quality")
          (items . ("Unit tests for all adapters"
                    "Input sanitization tests"
                    "CI/CD verification"
                    "Code coverage setup")))
    (v0.4 (title . "Hub Integration")
          (items . ("MCP protocol validation"
                    "Hub sync automation"
                    "Adapter health checks")))
    (v0.5 (title . "Documentation & Polish")
          (items . ("API documentation"
                    "Usage examples"
                    "README completion")))
    (v1.0 (title . "Production Release")
          (items . ("Full test coverage"
                    "Security audit"
                    "Performance optimization"
                    "Release packaging")))))

(define session-history
  '((snapshots ((date . "2025-12-15") (session . "initial") (notes . "SCM files added"))
              ((date . "2025-12-17") (session . "security-review") (notes . "SCM files updated, security fixes, roadmap created")))))

(define state-summary
  '((project . "orbital-ssg") (completion . 35) (blockers . 0) (updated . "2025-12-17")))

;;; STATE.scm — orbital-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define-module (orbital-ssg state)
  #:export (metadata current-position components blockers-and-issues
            critical-next-actions roadmap session-history state-summary))

(define metadata
  '((version . "0.2.0")
    (updated . "2025-12-22")
    (project . "orbital-ssg")
    (phase . "v0.3 - Full Infrastructure")))

;; 44/44 Component Status Tracking
(define components
  '((core-engine (4/4)
      (adapters-library ((status . "complete") (completion . 100)))
      (mcp-protocol ((status . "complete") (completion . 100)))
      (sanitization-layer ((status . "complete") (completion . 100)))
      (connection-management ((status . "complete") (completion . 100))))

    (build-system (4/4)
      (justfile ((status . "complete") (completion . 100) (location . "justfile")))
      (mustfile ((status . "complete") (completion . 100) (location . "Mustfile")))
      (containerfile ((status . "complete") (completion . 100) (location . "Containerfile")))
      (tool-versions ((status . "complete") (completion . 100) (location . ".tool-versions"))))

    (adapters (28/28)
      (rust-adapters ((cobalt . "complete") (mdbook . "complete") (zola . "complete")))
      (haskell-adapters ((ema . "complete") (hakyll . "complete")))
      (julia-adapters ((documenter . "complete") (franklin . "complete") (staticwebpages . "complete")))
      (clojure-adapters ((babashka . "complete") (cryogen . "complete") (perun . "complete")))
      (elixir-adapters ((nimble-publisher . "complete") (serum . "complete") (tableau . "complete")))
      (scala-adapters ((laika . "complete") (scalatex . "complete")))
      (racket-adapters ((frog . "complete") (pollen . "complete")))
      (other-adapters ((coleslaw . "complete") (fornax . "complete") (marmot . "complete")
                       (nimrod . "complete") (orchid . "complete") (reggae . "complete")
                       (publish . "complete") (wub . "complete") (yocaml . "complete")
                       (zotonic . "complete"))))

    (testing (4/4)
      (unit-tests ((status . "complete") (completion . 100) (location . "tests/")))
      (integration-tests ((status . "complete") (completion . 100) (location . "tests/integration/")))
      (sanitization-tests ((status . "complete") (completion . 100)))
      (ci-pipeline ((status . "complete") (completion . 100) (location . ".github/workflows/"))))

    (documentation (8/8)
      (readme ((status . "complete") (completion . 100) (location . "README.adoc")))
      (cookbook ((status . "complete") (completion . 100) (location . "cookbook.adoc")))
      (security-policy ((status . "complete") (completion . 100) (location . "SECURITY.md")))
      (contributing ((status . "complete") (completion . 100) (location . "CONTRIBUTING.md")))
      (code-of-conduct ((status . "complete") (completion . 100) (location . "CODE_OF_CONDUCT.md")))
      (adapter-docs ((status . "complete") (completion . 100) (location . "adapters/README.md")))
      (changelog ((status . "complete") (completion . 100) (location . "CHANGELOG.md")))
      (scm-files ((status . "complete") (completion . 100))))

    (configuration (4/4)
      (deno-config ((status . "complete") (completion . 100) (location . "deno.json")))
      (editor-config ((status . "complete") (completion . 100) (location . ".editorconfig")))
      (gitattributes ((status . "complete") (completion . 100) (location . ".gitattributes")))
      (gitignore ((status . "complete") (completion . 100) (location . ".gitignore"))))

    (scm-metadata (6/6)
      (meta-scm ((status . "complete") (completion . 100)))
      (ecosystem-scm ((status . "complete") (completion . 100)))
      (state-scm ((status . "complete") (completion . 100)))
      (playbook-scm ((status . "complete") (completion . 100)))
      (agentic-scm ((status . "complete") (completion . 100)))
      (neurosym-scm ((status . "complete") (completion . 100))))))

(define current-position
  '((phase . "v0.3 - Full Infrastructure")
    (overall-completion . 100)
    (total-components . "44/44")))

(define blockers-and-issues
  '((critical ())
    (high-priority ())
    (resolved
      (("Code injection in Julia adapters" . "2025-12-22")
       ("Code injection in Lisp adapters" . "2025-12-22")
       ("Template placeholders in SECURITY.md" . "2025-12-22")))))

(define critical-next-actions
  '((immediate ())
    (this-week
      (("Monitor CI/CD runs" . low)
       ("Add more adapter tests" . low)))
    (next-sprint
      (("Performance benchmarking" . low)
       ("Additional language adapters" . low)))))

(define roadmap
  '((v0.3 (title . "Full Infrastructure")
          (status . "complete")
          (items . ("44/44 components"
                    "Full test coverage"
                    "CI/CD pipeline"
                    "Documentation complete")))
    (v0.4 (title . "Hub Integration")
          (status . "next")
          (items . ("MCP protocol validation"
                    "Hub sync automation"
                    "Adapter health checks"
                    "Version negotiation")))
    (v0.5 (title . "Performance & Polish")
          (items . ("Benchmarking suite"
                    "Caching layer"
                    "Parallel execution")))
    (v1.0 (title . "Production Release")
          (items . ("Security audit"
                    "Performance optimization"
                    "Release packaging"
                    "NPM/JSR publication")))))

(define session-history
  '((snapshots
      ((date . "2025-12-15") (session . "initial") (notes . "SCM files added"))
      ((date . "2025-12-17") (session . "security-review") (notes . "Security fixes, roadmap created"))
      ((date . "2025-12-22") (session . "full-infrastructure") (notes . "44/44 components, Justfile, Mustfile, CI/CD, tests")))))

(define state-summary
  '((project . "orbital-ssg")
    (completion . 100)
    (components . "44/44")
    (blockers . 0)
    (updated . "2025-12-22")))

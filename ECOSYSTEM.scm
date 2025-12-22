;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — orbital-ssg

(ecosystem
  (version "1.0.0")
  (name "orbital-ssg")
  (type "project")
  (purpose "Satellite SSG implementation integrating with poly-ssg-mcp hub")

  (position-in-ecosystem
    "orbital-ssg is a satellite project in the hyperpolymath ecosystem.
     It provides Deno-based MCP adapters for static site generators,
     enabling AI-native workflows for content publishing across 17+ languages.")

  (related-projects
    (project
      (name "poly-ssg-mcp")
      (url "https://github.com/hyperpolymath/poly-ssg-mcp")
      (relationship "hub")
      (description "Unified MCP server aggregating all SSG adapters")
      (sync-direction "bidirectional"))
    (project
      (name "rhodium-standard-repositories")
      (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
      (relationship "standard")
      (description "RSR compliance guidelines and templates"))
    (project
      (name "noteg-mcp")
      (url "https://github.com/hyperpolymath/noteg-mcp")
      (relationship "sibling")
      (description "Note G language MCP server"))
    (project
      (name "claude-code")
      (url "https://github.com/anthropics/claude-code")
      (relationship "consumer")
      (description "Primary MCP client for adapter consumption")))

  (integration-points
    (mcp-tools "Each adapter exports MCP-compatible tools array")
    (hub-sync "Adapters sync to/from poly-ssg-mcp via transfer script")
    (ci-cd "GitHub Actions with CodeQL and Deno test runner"))

  (supported-languages
    (rust . ("cobalt" "mdbook" "zola"))
    (haskell . ("ema" "hakyll"))
    (julia . ("documenter" "franklin" "staticwebpages"))
    (clojure . ("babashka" "cryogen" "perun"))
    (elixir . ("nimble-publisher" "serum" "tableau"))
    (scala . ("laika" "scalatex"))
    (racket . ("frog" "pollen"))
    (lisp . ("coleslaw"))
    (fsharp . ("fornax"))
    (crystal . ("marmot"))
    (nim . ("nimrod"))
    (kotlin . ("orchid"))
    (d . ("reggae"))
    (swift . ("publish"))
    (tcl . ("wub"))
    (ocaml . ("yocaml"))
    (erlang . ("zotonic")))

  (what-this-is
    "A collection of 28 MCP-compatible adapters for static site generators,
     enabling AI agents to build, serve, and manage static sites across
     17+ programming language ecosystems.")

  (what-this-is-not
    "- NOT a static site generator itself
     - NOT a replacement for poly-ssg-mcp (it's a satellite)
     - NOT exempt from RSR compliance"))

# Devcards for dumdom

[Devcards](https://github.com/bhauman/devcards) is a system for rendering React
components in isolation. Because [dumdom](https://github.com/cjohansen/dumdom)
components are not React components, they need some wrapping for Devcards to
make sense of them. This is what the `dumdom.devcards` namespace is for:

```clj
(require '[dumdom.devcards :refer-macros [defcard]])

(defcard my-dumdom-card
  (my-dumdom-component {:value 0}))
```

`dumdom.devcards/defcard` works exactly the same as
[devcards.core/defcard](http://rigsomelight.com/devcards/#!/devdemos.defcard_api).

## Install

With tools.deps:

```clj
net.clojars.cjohansen/dumdom-devcards {:mvn/version "2021.06.14"}
```

Note: `dumdom-devcards` depends on `devcards`, you do not need to provide it
yourself. You do have to provide `dumdom`, however. This way you are in full
control of your production dependencies, and there is no need to update
`dumdom-devcards` for every `dumdom` release.

With Leiningen:

```clj
[net.clojars.cjohansen/dumdom-devcards "2021.06.14"]
```

## Changelog

### 2021.06.14

- Initial release: split out from the main dumdom repo.

## License

Copyright © 2021 Christian Johansen

Distributed under the Eclipse Public License either version 1.0 or (at your
option) any later version.

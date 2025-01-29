---
title: Mastering Nix
theme: theme/codersonly.css
revealOptions:
  transition: "fade"
---

## Welcome

<img src="coders-only.jpg" width="55%" />
<img src="meetup-of-test.avif" width="35%" style="margin: 0 20px" />

### Wifi

SSID: BRING Guest

Password: DontMakeTheOnionsCry

---

## Who are we?

![coders-only.jpg](coders-only.jpg)

We are a registered association in Zürich dedicated to software developers.

---

## What do we do?

- Coders Monthly
- SoCraTes Day
- Global Day of Coderetreat
- Software Craft Study Group
- Girl Coders get together
- Crafting Interpreters Book Study Group
- regular meetups

---

<img src="crafting-interpreters.png" />

---

<div style="background-color: #fff;">

<img src="sponsors/bbv.webp" width="30%" style="margin: 20px" />
<img src="sponsors/bring.webp" width="30%" style="margin: 20px" />
<img src="sponsors/ergon.webp" width="30%" style="margin: 20px" />
<img src="sponsors/finnova.webp" width="30%" style="margin: 20px" />
<img src="sponsors/house_of_test.webp" width="30%" style="margin: 20px" />
<img src="sponsors/megazord.webp" width="30%" style="margin: 20px" />

</div>

---

### Become a member today!

![become-a-member.svg](become-a-member.svg)

https://codersonly.org/verein/mitgliedschaft/

---

![nix.svg](nix.svg)

---

## This evening's goals

- Me being exposed to questions
- You learning at least something new

---

## Schedule

1. PhD Thesis by Eelco Dolstra

2. Brief overview of Nix concepts

3. Hands-on: Learning the Nix expression language

---

### The Purely Functional Software Deployment Model

by Eelco Dolstra

https://edolstra.github.io/pubs/phd-thesis.pdf

---

![phd-thesis.svg](phd-thesis.svg)

---

## Motivation for using Nix

...is that it solves one of the (subjectively) biggest issues in the software lifecycle.

---

- Dependencies
  - at build time
  - at run time
- Configuration
- Hardware
- ...

---

## Overview of Nix

- The Nix Store
- Nix Expressions
  - Nix Packages Collection
- Package Management
  - User Environments
- Store Derivations
- Deployment Models
  - Channels
- Transparent source/binary deployments

---

<img src="iceberg.png" height="650px" />

---

## Brief summary

---

- Nix _describes software components_ using a _functional expression language_.

- Nix _stores software components in isolation_ from each other in a central store _using unambiguous paths_.

- Nix _manages packages_ using the central store and _manipulating the user environment_.

---

## Where do I start?

Let's do some drawing!

---

## My approach

0. Learn the Nix expression language
1. Learn to describe environments with flakes
2. Learn to create your own derivations derivations
3. Start configuring your user environment using `home-manager`
4. Start configuring your system using NixOS

---

## Learning the language

...doing TDD on a problem we know!

---

## For those without Nix

```
$ sh <(curl -L https://nixos.org/nix/install) --daemon
```

For more information go to https://nixos.org/download/

---

# 👐🖥️

```
$ git clone https://github.com/escodebar/meetups.git
$ cd meetups && git checkout nix
$ ./test.sh
[PASS] 1/1 tests passed
```

---

...now pair and learn!

---

## Thank you!

---

and if you enjoyed this content... consider becoming a member

![become-a-member.svg](become-a-member.svg)

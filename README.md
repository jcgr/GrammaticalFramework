Laws and Logic
====================

## Overview

Laws and Logic is an attempt at parsing logical formulas (written in linear logic) into a natrual language using [Grammatical Framework][GF]. The program is intended to be able to read formulas describing voting protocols and generate proper, understandable sentences from it.

Laws and Logic is a project written by a bachelor student at the IT-University at Copenhagen.

## Current program

1. The program is capable of parsing simple logical formulars (see the [Test file](https://github.com/jcgr/GrammaticalFramework/blob/master/Laws/Laws6/Test.txt) for examples). It is limited to static identifiers and arguments currently.
2. The sentences it returns in English / Danish are understandable. They need more work, however.
3. It supports mathematical operations.

## Todo

1. Remove static identifiers / arguments and allow them to be defined as part of the formular.
2. Improve the sentences created in the natrual language.

[GF]: http://www.grammaticalframework.org/
# Labelled

A simple protocol for things that can supply their own SwiftUI label. 

The label generally consists of a string, and an icon.

Items implementing the protocol can override `labelName` and `labelIcon` to supply these (the icon is assumed to be an SF Symbols image).

Alternatively they can implement `label` directly to return a different kind of label. 

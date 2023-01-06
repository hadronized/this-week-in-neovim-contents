- [Neogen](https://github.com/danymat/neogen) `2.11` version now generates default annotations from the best type match, when calling `:Neogen` without arguments. (credits to @ssiyad)

Neogen will now try to guess (based on cursor position in the syntax tree) where to insert the annotations, by default.
No behaviour is changed when generating annotations with `:Neogen <TYPE>`, `>TYPE>` being the desired annotation type.

---

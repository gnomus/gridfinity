texts = [
  "M3N",
  "M3I",
  "M3x6",
  "M3x8",
  "M3x10",
  "M3x12",
  "M3x16",
  "M3x20",
  "M3x30",
  "M3N",
  "M3W",
  "M4x6",
  "M4x8",
  "M4x10",
  "M4x12",
  "M4x14",
  "M4x16",
  "M4x18",
  "M4x20",
  "M4x25",
  "M4x30",
  "M4x6",
]

texts.each do |text|
  system("docker run --rm -v .:/openscad openscad/openscad:dev openscad -o output/#{text}.3mf --enable lazy-union -D'text=\"#{text}\"' label/label.scad")
end

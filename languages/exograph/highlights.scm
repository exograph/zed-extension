"import" @keyword.import

[
  "module"
  "type"
  "context"
] @keyword

(module_method
  method_type: ["query" "mutation"] @keyword.modifier
  name: (term) @function.method)

[
  "interceptor"
  "export"
] @keyword.modifier

(import
  path: (literal_str) @string.special.path)

(module
  name: (term) @module)

(context
  name: (term) @type.definition)

(type
  name: (term) @type.definition)

(field
  name: (term) @property)

(field_type
  (term) @type)

(field_type
  ((term) @type.builtin)
   (#any-of? @type.builtin "Int" "Float" "Decimal" "String" "Boolean" "Uuid" "LocalDate" "LocalDateTime" "LocalTime" "Instant" "Json" "Blob" "Vector" "Set"))

(argument
  name: (term) @variable.parameter)

(annotation_map_param
  name: (term) @variable.parameter)

(selection
  (term) @variable)

(selection
  ((term) @variable.special
   (#eq? @variable.special "self")))

(selection
  ((term) @type
   (#match? @type "^[A-Z]")))

(selection_element
  (term) @property)

(field_default_value
  default_value_fn: (term) @function.call)

(hof_call
  name: (term) @function.call
  param_name: (term) @variable.parameter)

(annotation) @function.call

(literal_boolean) @boolean
(literal_str) @string
(literal_number) @number

(comment) @comment

[
  "("
  ")"
  "{"
  "}"
] @punctuation.bracket

[
  ":"
  ";"
  "?"
  "):"
] @punctuation.delimiter

[
  "!"
  "="
  "&&"
  "||"
  "!"
  "!="
  "=="
  "<"
  "<="
  ">"
  ">="
  "=>"
  "in"
] @operator

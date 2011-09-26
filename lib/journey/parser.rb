#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'


require 'journey/parser_extras'
module Journey
  class Parser < Racc::Parser
##### State transition tables begin ###

racc_action_table = [
    17,    22,    13,    15,    14,     7,    15,    16,     8,    19,
    13,    15,    14,     7,    24,    16,     8,    19,    13,    15,
    14,     7,   nil,    16,     8,    13,    15,    14,     7,   nil,
    16,     8,    13,    15,    14,     7,   nil,    16,     8 ]

racc_action_check = [
     1,    17,     1,     1,     1,     1,     8,     1,     1,     1,
    20,    20,    20,    20,    20,    20,    20,    20,     7,     7,
     7,     7,   nil,     7,     7,    19,    19,    19,    19,   nil,
    19,    19,     0,     0,     0,     0,   nil,     0,     0 ]

racc_action_pointer = [
    30,     0,   nil,   nil,   nil,   nil,   nil,    16,     3,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,     1,   nil,    23,
     8,   nil,   nil,   nil,   nil ]

racc_action_default = [
   -18,   -18,    -2,    -3,    -4,    -5,    -6,   -18,   -18,   -10,
   -11,   -12,   -13,   -14,   -15,   -16,   -17,   -18,    -1,   -18,
   -18,    -9,    25,    -8,    -7 ]

racc_goto_table = [
    18,     1,    21,   nil,   nil,   nil,   nil,   nil,    20,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    23,    18 ]

racc_goto_check = [
     2,     1,     7,   nil,   nil,   nil,   nil,   nil,     1,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     2,     2 ]

racc_goto_pointer = [
   nil,     1,    -1,   nil,   nil,   nil,   nil,    -6,   nil,   nil,
   nil ]

racc_goto_default = [
   nil,   nil,     2,     3,     4,     5,     6,    10,     9,    11,
    12 ]

racc_reduce_table = [
  0, 0, :racc_error,
  2, 11, :_reduce_1,
  1, 11, :_reduce_2,
  1, 11, :_reduce_none,
  1, 12, :_reduce_none,
  1, 12, :_reduce_none,
  1, 12, :_reduce_none,
  3, 15, :_reduce_7,
  3, 13, :_reduce_8,
  2, 16, :_reduce_9,
  1, 14, :_reduce_none,
  1, 14, :_reduce_none,
  1, 14, :_reduce_none,
  1, 14, :_reduce_none,
  1, 19, :_reduce_14,
  1, 18, :_reduce_15,
  1, 17, :_reduce_16,
  1, 20, :_reduce_17 ]

racc_reduce_n = 18

racc_shift_n = 25

racc_token_table = {
  false => 0,
  :error => 1,
  :SLASH => 2,
  :LITERAL => 3,
  :SYMBOL => 4,
  :LPAREN => 5,
  :RPAREN => 6,
  :DOT => 7,
  :STAR => 8,
  :OR => 9 }

racc_nt_base = 10

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "SLASH",
  "LITERAL",
  "SYMBOL",
  "LPAREN",
  "RPAREN",
  "DOT",
  "STAR",
  "OR",
  "$start",
  "expressions",
  "expression",
  "or",
  "terminal",
  "group",
  "star",
  "literal",
  "symbol",
  "slash",
  "dot" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

def _reduce_1(val, _values, result)
 result = Cat.new(val.first, val.last) 
    result
end

def _reduce_2(val, _values, result)
 result = val.first 
    result
end

# reduce 3 omitted

# reduce 4 omitted

# reduce 5 omitted

# reduce 6 omitted

def _reduce_7(val, _values, result)
 result = Group.new(val[1]) 
    result
end

def _reduce_8(val, _values, result)
 result = Or.new(val.first, val.last) 
    result
end

def _reduce_9(val, _values, result)
 result = Star.new(Symbol.new(val.last.left)) 
    result
end

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

def _reduce_14(val, _values, result)
 result = Slash.new('/') 
    result
end

def _reduce_15(val, _values, result)
 result = Symbol.new(val.first) 
    result
end

def _reduce_16(val, _values, result)
 result = Literal.new(val.first) 
    result
end

def _reduce_17(val, _values, result)
 result = Dot.new(val.first) 
    result
end

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module Journey

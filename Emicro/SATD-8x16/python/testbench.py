
def dec_to_binary(num, x):
  """
  This function converts a decimal number to its binary representation in x bits.

  Args:
      num: The decimal number to convert.
      x: The number of bits to use in the binary representation.

  Returns:
      The binary representation of the decimal number as a string.
  """

  if num == 0:
    return '0' * x
  elif num < 0:
    # Convert to two's complement, special case for most negative number
    if num == - (1 << (x - 1)):
      return '1' * x
    else:
      return format((1 << x) + abs(num), f'0{x}b')[:-1]
  else:
    return format(num, f'0{x}b')[:-1]



binary_rep = dec_to_binary(-66320, 20)
print(binary_rep)
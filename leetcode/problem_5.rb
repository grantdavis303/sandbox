require 'pry'

# Tip: Break down the problem into every single baby step

# 1. Read the problem or prompt thoroughly
# 2. Define input and expected output
# 3. Determine constraints and create tests (with expected outcomes)
# 4. Brainstorm ideas for solution that satisfy all tests
# 5. Build the method/function

# Problem 5

# # Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# Input: String
# Output: Boolean

def is_valid(string)
  brackets = {
    open_par: 0,
    closed_par: 0,
    open_sq: 0,
    closed_sq: 0,
    open_cur: 0,
    closed_cur: 0
  }

  string.chars.each do |char|
    if char == '('
      brackets[:open_par] += 1
    elsif char == ')'
      brackets[:closed_par] += 1
    elsif char == '['
      brackets[:open_sq] += 1
    elsif char == ']'
      brackets[:closed_sq] += 1
    elsif char == '{'
      brackets[:open_cur] += 1
    elsif char == '}'
      brackets[:closed_cur] += 1
    end
  end

  # If the overall count of opening and closing brackets match...
  open_brackets_count = brackets[:open_par] + brackets[:open_sq] + brackets[:open_cur]
  closed_brackets_count = brackets[:closed_par] + brackets[:closed_sq] + brackets[:closed_cur]

  if open_brackets_count == closed_brackets_count
    matches = Hash.new
    matches[:par_match] = true if brackets[:open_par] == brackets[:closed_par] && brackets[:open_par] > 0
    matches[:sq_match] = true if brackets[:open_sq] == brackets[:closed_sq] && brackets[:open_sq] > 0
    matches[:cur_match] = true if brackets[:open_cur] == brackets[:closed_cur] && brackets[:open_cur] > 0

    return false if matches.empty?

      # The counts match but the order is wrong!
      # Order Good vs Order Bad

      # If you're an open bracket, search for the closed bracket of the same type
      # If there isn't a bracket of the same type, return false
      # Count the number of connections/pairs
      # If the pairs number is equal to 1/2 the length of the original string, return true
      # Otherwise return false
      # Only search for combinations if the character is na open bracket

    "Matches: #{matches}"
  else
    return false
  end
end


p is_valid('(') # GOOD
# Expecting false

p is_valid(']') # GOOD
# Expecting false

p is_valid('()')
# Expecting true

p is_valid('(]') # GOOD
# Expecting false

p is_valid('([])')
# Expecting true

p is_valid('[[[]') # GOOD
# Expecting false

p is_valid('([)]')
# Expecting false

p is_valid('()[]{}')
# Expecting true

p is_valid('(){}}{')
# Expecting false
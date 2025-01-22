require 'pry'

# Tip: Break down the problem into every single baby step

# 1. Read the problem or prompt thoroughly
# 2. Define input and expected output
# 3. Determine constraints and create tests (with expected outcomes)
# 4. Brainstorm ideas for solution that satisfy all tests
# 5. Build the method/function

# Problem #

# Description

# Input:
# Output:

def display(input, output)
    puts "Input: #{input}"
    puts "Output: #{output} \n\n"
end

display('(', false)
display(']', false)
display('()', true)
display('(]', false)
display('([])', true)
display('[[[]', false)
display('([)]', false)
display('()[]{}', true)
display('(){}}{', false)
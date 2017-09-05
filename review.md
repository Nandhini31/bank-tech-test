## RESULT: MORE WORK TO DO

Good 1st draft. Doesn't pass Acceptance Criteria
User should see this:
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

- (I am saying this to everyone) Seriously, please read all of this: https://github.com/makersacademy/jobhunters/blob/master/pills/tech_test_guide.md

### LIB
- what do you use `attr_reader :balance,:history, :printer` for? what do they do?
- what are the responsibilities of Account? Can this be broken down?
- think harder about single responsibilities. Each method, each class.

### SPECS
- NICE: removed comments from spec_helper, but left SimpleCov comments in?
- mostly readable spec format, but i need to add --format documentation myself.
- Why is everything nested inside of describe #initialize ? Looks like you forgot to end it.
-

### README.md
- instructions: how would I actually set your app up?
- Where's the Gemfile? Why do we need a Gemfile?
 - your instructions say to bundle install but it throws an error! `Could not locate Gemfile`
 - it doesn't say to use IRB. it just has a bunch of ruby code?
 - what are the return values meant to be when i use it in irb?

### STYLE
- code has not been run through a linter. Rubocop? There are empty lines and whitespace.
- Test Coverage?

### OTHER
-

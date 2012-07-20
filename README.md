## Demo of Mocha/Bacon integration

### How it works

- `mocha-on-bacon.rb` re-opens `Bacon::Specification` to include `Mocha::API`.
- Also does `alias_method_chain` style manoeuvres on `Bacon::Specification#run`, `Bacon::Specification#execute_block`, and `Bacon::Specification#finalize` in order to add calls to `Mocha::API#mocha_setup`, `Mocha::API#mocha_verify`, and `Mocha::API#mocha_teardown` respectively. Monkey-patching all the way.

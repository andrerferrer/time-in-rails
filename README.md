# GOAL

This is a demo to show-case how to work with time (_latu sensu_) in `Rails`.

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## TLDR

## What are we talking about?

`Rails` has some pleasant methods to handle time.

For example, if we want to get an object that represents tomorrow, we can run `1.day.from_now`
and it will return us a corresponding `Time` object.

The same can be done with `1.day.ago`, `1.week.ago`, `1.month.ago` and `1.year.ago` to represent the past.

If we want to be more specific, we can concatenate them.

e.g. To find a `Time` 2 days and 1 week from now:

`(2.days + 1.week).from_now`

All of this comes from the [`active_support` gem](https://edgeguides.rubyonrails.org/active_support_core_extensions.html#extensions-to-integer-time).

You can test it in `Ruby` (without `Rails`) by:

1. installing the gem (`gem install activesupport`) and
1. requiring the module `require 'active_support/core_ext/integer/time'`.

On the terminal:

`gem install activesupport`

On `irb`:

```ruby
require 'active_support/core_ext/integer/time'
(2.days + 1.week).from_now
#=> 2020-08-31 12:34:51 -0300
# I'm running this on aug 22 2020, 12h 34'
```

## Going forward

### Hour methods

We have available:
`#at_beginning_of_day`, represents 0 hour
`#at_beginning_of_hour`
`#at_beginning_of_minute`
`#at_end_of_day`
`#at_end_of_hour`
`#at_end_of_minute`
`#at_midday`
`#at_middle_of_day`
`#at_midnight`
`#at_noon`



And we're good to go

Good Luck 🍀 and Have Fun 🤓

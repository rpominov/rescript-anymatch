type matcher

external pathToMatcher: string => matcher = "%identity"
external globToMatcher: string => matcher = "%identity"
external regexToMatcher: Js.Re.t => matcher = "%identity"
external fnToMatcher: (string => bool) => matcher = "%identity"

@module external matchString: (array<matcher>, string) => bool = "anymatch"

// TODO: options (need rescript-picomatch)

// 10/02/2021: This does not work for me on Mac.  
// Read https://stackoverflow.com/questions/25078127/io-language-exception-object-does-not-respond-to-url
// Tried running: homebrew install libevent-dev but still didn't work.

futureResult := URL with("https://google.com/") @fetch
writeln("Do something immediately while fetching....")
writeln("Futures are like Promises.")
writeln("fetched ", futureResult size." byte")

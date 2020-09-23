# Guided Exercise #9 - Abstract Worksheet
Title: Rust & Svelte: Part 1 - Hello World    

Abstract: This blog will be a show and tell on how to glue together Rust and Frontend code using Web Assembly.
I happen to be using Svelte, but it can be done with any Frontend framework or just JavaScript.  The purpose
is to give a gentle introduction on how it's done with a Hello World example.

Prerequistes:
* A little Rust
* A little JavaScript
* Some familiarity with the commandline

Takeaways: The reader should be able to read a variable that was set in Rust and display it in their browser console or web page.

Next Steps:  Send input from the front end to the Rust code.

# Guided Exercise #10 - Blog Post Outline   
Intro:
A good way to expand your front end engineering skills is to learn Rust and Web Assembly.

Prereqs: 
* A little Rust knowledge
* A little Svelte/JavaScript knowledge
* Comfortable with the command line
Body/Steps:
1. Set up environment with rustup
2. Start new rust/wasm project
3. Create "Hello World" rust function  and build
4. Create new Svelte project
5. Take binary/build from rust/wasm project and copy to Svelte project
6. Invoke rust function from JavaScript to display browser or console
7. Yay! We're done!
Resources:
* https://www.rust-lang.org/learn/get-started
* https://webassembly.org/
* https://svelte.dev/
Next Steps: 
* https://rustwasm.github.io/book/

# Guided Exercise #11 - First 500 words
I think I am the worse Front End Engineer.  I love the command line and generally stay clear of GUIs if I can help it.  My go to editor for many years was vi (now vim).  But what I love about being a Front End Engineer is the endless possibilities of things to learn. The front end world moves fast and there is always a new library or a new framework to sink your teeth into.  
If you want to expand your horizons, you can tease into backend work and be a full stack engineer.  Another direction is side stepping into Web Assembly and Rust.  Web Assembly brings the power of compiled code to the browser.  Rust, generally thought of as a systems programming language, is a popular choice. I happen to be learning Svelte as well and thought that would be a good place to integrate these technologies.  This is the beginning of a personal journey starting with a simple Hello World example.   

Environment Setup:
`brew install rustup`

Create A Rust Project:
`cargo generate --git https://github.com/rustwasm/wasm-pack-template --name helloworld`

Create a Svelte Project:
`npx degit sveltejs/template helloworld-site`

Putting it all together:




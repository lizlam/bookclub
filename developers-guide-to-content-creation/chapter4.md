# Guided Exercise #9 - Abstract Worksheet
Title: Rust & Svelte: Part 1 - Hello World    
Abstract: This blog will be a show and tell on how to glue together Rust and Frontend code using WebAssembly.
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
A good way to expand your front end engineering skills is to learn Rust and WebAssembly.

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
## Introduction
I think I am the worse Front End Engineer.  I love the command line and generally stay clear of GUIs if I can help it.  My go to editor for many years was vi (now vim).  But what I love about being a Front End Engineer is the endless possibilities of things to learn. The front end world moves fast and there is always a new library or a new framework to sink your teeth into.  
If you want to expand your horizons, you can dip your toes into backend waters and be a full stack engineer.  Another direction is side stepping into WebAssembly and Rust.  WebAssembly brings the power of compiled code to the browser.  Rust, generally thought of as a systems programming language, is a popular choice.  This is because the WebAssembly binary includes the runtime and the runtime for Rust is extremely small.  Along the same vein, Svelte is an upcoming front end framework that compiles itself away and you are left with vanilla JavaScript.  This means the bundle size is also extremely small producing fast web applications.  I happen to be learning Svelte as well and thought that would be a good place to integrate these technologies.  This is the beginning of a personal journey starting with a simple Hello World example.   

## Environment Setup     
* Install `rustup` according to the [rustup website](https://rustup.rs/).    
NOTE: `rustup` will install `cargo` (the rust package manager) and `rustc` (the rust compiler).    
* Install `wasm-pack` according to the [wasm-pack site](https://rustwasm.githu.io/wasm-pack/installer/)     
* Install `cargo-generate` using this command: `cargo install cargo-generate`    
* [Install node](https://nodejs.org/en/), this will also install `npm` and `npx`.

## Create A Rust Project     
`cargo generate --git https://github.com/rustwasm/wasm-pack-template --name helloworld`
`cd helloworld/src`    

If you take a look in the `src` directory, there will be 2 files:
lib.rs
utils.rs

The content of lib.rs:
```
mod utils;

use wasm_bindgen::prelude::*;

// When the `wee_alloc` feature is enabled, use `wee_alloc` as the global
// allocator.
#[cfg(feature = "wee_alloc")]
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[wasm_bindgen]
extern {
    fn alert(s: &str);
}

#[wasm_bindgen]
pub fn greet() {
    alert("Hello, helloworld!");
}
```

## Create a Svelte Project    
`npx degit sveltejs/template helloworld-site`

## Putting it all together    




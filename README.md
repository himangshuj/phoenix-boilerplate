# PhoenixBoilerplate
An opinionated take on boilerplate code for phoenix apps using alpinejs, tailwindcss , postgres ,gigalixir and github actions. 

## Rationale behind each choice. 

Disclaimer: I do not claim this is the best stack for web development but this is definitely the best stack for me
with my unique skill-set. I am a pro database engineer and backend developer who can hold his own on javascript, but I am very
bad in CSS. I love programming but am more interested in rolling out a product rather than solving more complicated algorithms.
I know devops and have done it as part of my job, but it is not something that excites me as a person as compared to a product that 
solves a problem for a human being. 

* Phoenix: Phoenix in elixir is the fastest language for me to build a website. All major websites are essentially usable wrappers around CRUD
operations. Phoenix gives me out of the box scaffolding to convert my db design to functioning websites with intelligible validation messages.
It provides out of the box utilities for both dynamic UX using live-view and json apis. It helps that it is built on erlang vm which uses very less
memory and has high throughput. However, I will not use phoenix for image processing or machine learning. 

* Postgres: Since Oracle bought MYSQL, I have worked a lot on progress, and it remains my goto choice for reasonably priced database. 

* Gigalixir: I love the simplicity of erstwhile php where I learned real world programming. I could focus on use case and just ftp the files. 
Gigalixir is the nearest experience I had that resembles my early days of my ameteur programming. It is also free for a single project.

* TailwindCSS: I hate CSS. I cannot center a div for the love of God. I recently bought a Tailwindui License and it has unshackled my programming abilities.

* AlpineJs: Advanced TailWind requires some javascript. Tailwind works well with React and Angular and Alpine. Of the three, I am most familiar with React but
React does not go too well with Phoenix. I like to have end-to-end test cases for all my routes and html data interactions. This is not possible if some business
  logic is handled by React and hence Alpine JS.

## Build Status
[![Tests](https://github.com/himangshuj/phoenix-boilerplate/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/himangshuj/phoenix-boilerplate/actions/workflows/test.yml)

## Local Dev instructions 

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Deploy to Gigalixir
* Create an app in gigalixir
* in Github repository settings set
    * APP_NAME
    * GIGALIXIR_USERNAME
    * GIGALIXIR_PASSWORD
* Tag the desired commit with a tag start with v e.g: v0.1,v1.1 etc  
    
## Learn more

  * Official website: https://www.phoenixframework.org/
  * Gigalixir: https://gigalixir.readthedocs.io/en/latest/getting-started-guide.html
  * AlpineJs: https://github.com/alpinejs/alpine
  * TailWindCSS: https://tailwindcss.com/

## Demo-Preview
https://phx-bp-demo.himangshu.io/

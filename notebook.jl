### A Pluto.jl notebook ###
# v0.19.27

#> [frontmatter]
#> author_url = "https://github.com/M-PERSIC"
#> image = "assets/Pluto_Banner.png"
#> tags = ["workshop", "tutorial", "programming", "science"]
#> author_name = "Michael Persico"
#> description = "Programming for Scientists Workshop (Fall 2023) by the Biology Student Association (BSA Concordia)"
#> license = "Unlicense"

using Markdown
using InteractiveUtils

# ╔═╡ 8cd75e7b-3111-4d5a-ae02-18f913cd242e
using Test

# ╔═╡ 26746842-452b-11ee-11bc-99241d6fb2a6
md"""
# Welcome to Programming for Scientists!

Presented by **Michael Persico** of the Concordia University **Biology Student Association (BSA)**

**Source**: [github.com/M-PERSIC/Programming-for-Scientists-Workshop.git](https://github.com/M-PERSIC/Programming-for-Scientists-Workshop.git)

> **Note**
> This workshop is the second part of the "Computers/Programming for Scientists" double workshop. The first part, "Computers for Scientists", was presented separately and thus some concepts are not repeated in order to conserve time. The link to the previous presentation is here: 
"""

# ╔═╡ 7e63c1e0-7627-4d26-bc01-21332de6be16
md"""
## What is a programming language?

According to the Encyclopædia Brittanica, a **programming language** is "any of various languages for expressing a set of detailed instructions for a digital computer". In simpler terms, it is a system of commands that tells your computer exactly what to do.

No two languages are alike, and there are an almost incalculable number of differences between each of them, but do not get overwhelmed! Programming, and computer science in general, are massive fields that people have dedicated entire careers to (ha, nerds)! Presented during this workshop is a series of bite-sized overviews of key programming concepts.
"""

# ╔═╡ 5c18083b-b530-4e75-b70d-0bf47c0cf3a2
md"""
## A little history
![The lovely Ada Loveace](https://cdn.britannica.com/31/187431-131-93322729/Ada-Lovelace.jpg)

Ada Lovelace was the first computer programmer. In the 1830s, mathematician Charles Babbage wished to build the "Analytical Engine" which was to be an early programmable computer. The engine was to include a primitive language, and it was Lovelace who proposed the first theoretical programs that could perform different tasks like calculating Bernoulli numbers.

> **Note**
> She is the namesake of the modern Ada programming language still in use today!

Between then and the first modern computers, almost all programs were written in **machine language**, which means the language the computer itself speaks. This is usually in binary (0s and 1s), therefore programmers would have to write the thousands of lines of nothing but numbers all the while using fragile systems like punch cards! This period is categorized as the **first generation** of programming languages.

![The dreaded punch card](https://media.wired.com/photos/59325cb4a3126458449944af/191:100/w_1280,c_limit/punch-cards-ft.jpg)

To help _humanize_ these languages, **assembly languages** were created, which are still machine language however now words could be used in lieu of numbers, thus greatly increasing readability. Their rise constituted the **second generation**.

New **high-level** languages soon came into the forway, which are much more _abstract_ than low-level languages and can almost read like a real human language. They also include novel features that are not possible with low-level languages like automatic memory management and portability across many different computer types. This **third generation** saw the rise of many popular languages such as C, Java, Python and JavaScript. The **fourth and fifth generations** included more specialized and featureful languages like LISP and R.

Along the way, new types of programming languages came about such as **markup languages** (Markdown, HTML), which use tags to add structure and meaning to documents. Today, many languages enjoy popularity in a number of specific domains: 

- **Systems languages**: (Rust, Go, Zig, C)
- **Web development**: (Javascript/Typescript, PHP)
- **General-purpose**: (Julia, Python, Java, Ruby)
- **Scientific**: (Fortran, R)
- **Scripting**: (Bash, PowerShell, Perl)
"""

# ╔═╡ f603f377-8697-4d09-8610-c9369501a857
md"""
## How does this work?

We are in what is known as a **notebook**! Specifically, it is a **WYSIWYG** (What You See Is What You Get) environment for working with code within individual blocks known as _cells_. You can add, remove, or manipulate any cell, which will help you learn with a more hands-on approach. You can even download this notebook and share it with your friends, see the export button at the top right!

This specific environment is called a [Pluto](https://plutojl.org/) notebook, which is designed for Julia. Julia is a relatively new programming language with excellent features for scientific computing. It is also great for teaching due to it being high-level and easy to read and write.

Certain sections include code examples that you can run and manipulate, along with some exercises that we will work on together.  
"""

# ╔═╡ 9cec5f6d-3957-452b-898d-233bd44c77ec
md"""
## Before we begin...

We need to explain a few concepts:

- **Coder, developer, programmer**, etc. might have differing definitions depending on certain contexts, however they can be used interchangeably to signify someone who programs! There are alot of words which represent similar concepts in computer science with very nuanced differences, you will pick these up as you go along
- A **program** represents an actual implementation of an **algorithm**, which represents a set of instructions that perform a specific task. The code of a program is represented as a series of lines from top to bottom with a mix of specific keywords and user-defined words that describe either the program itself or the code that makes up that program (**metaprogramming**)
- A **comment** is a note within your program that can help explain certain concepts or pieces of code to yourself or to another programmer. They do NOT affect your program, but they will help better document your code. In Julia, we define a comment with a hashtag (`#`) at the beginning of a line like so:
"""

# ╔═╡ 7f92b572-d0de-4a8a-ad5c-4a2ddc7ce7f6
#This is a comment, nothing happens!

# ╔═╡ b7b8c1ea-4c0a-4b0d-937a-d46a20b96ea9
md"""
Now, for you to declare yourself a true programmer, you must make your first program! This is a rite of passage for any new "coder", a tradition that has spanned the decades! You will write a one-line program that outputs (prints) the sentence "Hello World!". **Write out the following line in an empty cell and run it:** `println("Hello World")`
"""

# ╔═╡ 43ee935e-ec0d-4277-84f5-9c9926aacb31


# ╔═╡ eeef418b-465d-4643-8f89-f04dd820e1b9
md"""
## Variables

A **variable** is a name that is tied to a value stored in memory. Instead of having to remember exactly where this data is located every time, we can reuse the name anywhere in our program.
"""

# ╔═╡ b18387c5-f0aa-4a67-9826-665bcacec2ff
x = 1

# ╔═╡ 529eda59-76ee-4446-853f-be2774e08992
md"""
There are two steps happening here:

- **Declaration** (create, or "declare", the variable)
- **Initialization** (tie the variable to a **value**, meaning instance of data)

A third step, called **assignment**, is when the value of a variable is changed:
"""

# ╔═╡ 4624fe4b-4f0d-48f4-9bee-44546e2e4144
md"""
These variables are **mutable** by default, meaning we can update the values. To make sure we cannot change the value tied to the variable, we can declare a **constant** variable:
"""

# ╔═╡ 62a2d5be-261e-413f-9879-9ecb6214ac50
const y = 2
#y = 3 or any other value will return an error!

# ╔═╡ 71fef82f-5494-480c-a825-76771b7383f8
md"""
## Types

**Types** represent the different kinds of data that can exist. Text and numbers can be considered to be data with different properties, for example. Let us explore some of the fundamental types that almost every language possesses!

### primitive types

**Primitive types**, or simply known as **primitives**, are the most basic types found in almost every language that represent important concepts like numbers, text, and arrays (containers). 

Numbers are usually represented as two types: integers and floats. An **integer** is a whole number (1, 10, 1238915,...) with no decimal points. A **float**, or **floating-point number**, is a number with a decimal point (1.1, 3.14,...). 

Floats are related to, but not exactly the same as decimal numbers we usually see in class, and are only _approximations_. This is because:
- Computers have finite memory, thus they cannot accurately represent infinite numbers (1/3 = 0.33333333... but computers must stop somewhere along the decimal position)
- Most computers are a base-2 system (0 or 1) which cannot convert every base-10 number accurately:
"""

# ╔═╡ 797670e0-443e-4cb3-bdb3-ca8fc1b9c288
0.1 - 0.01

# ╔═╡ f7ce7abd-cbe9-45be-b36d-d80f4fe3171c
md"""
Some languages include more specific number types. With Julia, there are at least 11 integer types. These include the signed integers `Int8`, `Int16`, `Int32`, `Int64`, `Int128`, and `BigInt`, and the unsigned integers `UInt8` up to `UInt128`. Notice how there are two integer classes:

- **Unsigned** integers use every bit to represent the number (7 is represented as 0111 = $(0 \times 8) + (1 \times 4) + (1 \times 2) + (1 \times 1) = 4 + 2 + 1$)
- **Signed** integers use one bit to represent a positive or negative number (0111 represents -7, 1111 represents 7)

`BigInt` is a special type that can represent almost any large number, at the cost of performance. We usually stick to `Int64` since it represents most numbers for our needs (any number within -$2^{63}$ and $2^{63}$).

> **_NOTE:_**  In Julia, `Int` is an **alias type** (alternative name) for `Int64`

"""

# ╔═╡ 85707728-42c5-466c-8a11-5f2c8a64a5ce
md"""
### container types 
"""

# ╔═╡ 1d2dfcc5-a2ff-4577-9643-e96cf67813f3
md"""
### composite (product) types

**Composite types**, also referred to as **structs** in some languages, are data types we can create that combine other data types together into one. For example, let's define a `Point` type which represents any point on a 2D plane (x and y coordinates): 
"""

# ╔═╡ ae27464d-53e2-4dde-a36f-9a872be109a5
struct Point
	x::Int
	y::Int=3
end

# ╔═╡ 19898457-a9ab-413c-b917-7fcb500d8a9b
md"""
`Point` is composed of two integer types with attached names `x` and `y`. These are properties of `Point` known as **fields**.

Notice that we added `::Int` to each field. These are known as **type declarations**, meaning we are instructing the language as to the _exact_ type each field will be. If we did not do this, `x` and `y` would default to the `Any` type, which would mean any kind of data would be allowed (string, array, etc.). This, of course, would not make sense for representing coordinates!
"""

# ╔═╡ 7b9445c4-5f32-40fa-badb-59bd2d5b6887
begin
	p1 = Point(1,2)
	println("x = ", p1.x)
	println("y = ", p1.y)
end

# ╔═╡ c120e2bb-91f3-402c-ba79-5e3e794c48e5
md"""
Each instance of Point is known as an **object**, like `p1`, and we call the way in which we can access the fields of `p1` **dot notation**.

Now let us see what happens if we try to update the values of `p1`:
"""

# ╔═╡ 9627e9c7-d663-45ce-86db-ed5407b4ce3b
p1.x = 2

# ╔═╡ 0e1a55a1-e787-4b9d-b490-a6eb7af7af86
md"""
Look at the `sefield!` error. Some languages, like Julia, set structs to be **immutable** by default, meaning we are not allowed to change the values. We would have to create new `Point` objects if we need updated coordinates. We can create mutable structs with the `mutable` keyword, but before we do... 
"""

# ╔═╡ 6a95b42a-28ab-4368-a13a-954d2c6c2aca
md"""
## Generics

There are many situations that can arise wherein we may not necessarily know what type the value will be, or that we need more flexibility than what is on offer. Let us witness such a scenario:
"""

# ╔═╡ c5994f47-fcb9-4a8c-a975-e668a605a489
container::Vector{Int} = [1, 2, 3.1]

# ╔═╡ 4ff97b5e-38d3-466a-8b25-1058c0650841
md"""
Here, we are trying to add a float (3.1) to a vector of integers. However, we have already defined the variable to be of a specific type, therefore the language will refuse our instruction. We may want a container to be composed of numbers instead of just integers, therefore we need a way to tell the language that that is what we want. 

Remember when we mentioned how Julia defaults to the `Any` type? This is a **supertype** of every type, meaning it is the most general type from which all other types descend from, referred to as **subtypes**:
"""

# ╔═╡ 0989d007-7085-434d-9dfb-f84115635c38
begin
	container2::Vector{Any} = [1,2,3]
	push!(container2, 4.1)
	println(container2)
end

# ╔═╡ 47fa73d0-5116-4cc1-9a7f-03c12a733c4f
md"""
The further away from the supertype, the more specific the type is. While we could simply declare everything as `Any`, this will cause problems for us further down the road. What if we want to have _some_ degree of control over what types can be allowed? Basically, what if we can restrict the type, such as declaring "the type can be any type of number"? 

Generics is a fancy term for a "parameterized type", which is to say **what types a type can be.** Another way to create a container of type `Any` is:
"""

# ╔═╡ 6c454cda-6711-471c-9f67-46f6046acb95
container3::Vector{T} where T = [1,2,3] # will resolve to a vector of type Int

# ╔═╡ a15b5f76-0435-4ff6-b6f7-287e9ba39175
md"""
We declare `container3` to be a vector of type T, specifically a vector with elements of type T. We want to create a variable that is a type of vector with elements of any type of number, therefore we can restrict T to any subtypes of the supertype `Number`:
"""

# ╔═╡ 898f79af-b5bf-47b7-9528-e39dd058b021
begin
	container4::Vector{T} where {T <: Number} = [1, 2, 3] 
	# will resolve to a vector of type Int
	
	container5::Vector{T} where {T <: Number} = [1.1, 2.2, 3.3]
	# will resolve to a vector of type Float64

	container6::Vector{T} where {T <: Number} = [1, 1.1]
	# will resolve to a vector of type Float64, which is the common type
	# since you can represent an integer as a float (1.0), but not vice-versa

	container7::Vector{T} where {T <: Number} = [1, 1.1, 1im]
	# will resolve to a vector of type ComplexF64, meaning complex numbers
	
	# container8::Vector{T} where {T <: Number} = [1, 1.1, "1.1"]
	# Will not work, whereas before it would resolve to a vector of type Any
end

# ╔═╡ d39f9e89-7a4c-4749-b7b1-014f6d7ed241
md"""
To expand on the comments for `container6`, the language, in the face of elements of differing types, will first try to promote all elements to a common type that can represent every element as accurately as possible. Floats can represent the integer 1 as 1.0, however with integers we would have to convert, say, 1.1 to 1, which means we would lose information. Only if it cannot promote all elements without losing information will it default to `Any`.

With generics, we can expand our `Point` struct to include multiple kinds of coordinates, not just those using whole numbers. Let us define a new struct called `Point2` that include any kind of number AND is mutable so that we can change object coordinates:
"""

# ╔═╡ 87215b16-287c-4c3b-bf66-d14c8a90b1d9
begin
	mutable struct Point2{T <: Number}
		x::T
		y::T
	end
	
	p2 = Point2(3.1, 4.2)
	p2.x = 10.8

	println("Point2: x = ", p2.x, ", y = ", p2.y)

	# We can get a little bit crazier and include multiple parameterized types!
	struct Point3{T <: Number, U <: Number}
		x::T
		y::U
	end

	p3 = Point3(3, 4.1)
	println("Point3: x = ", p3.x, ", y = ", p3.y)

	# One more :)
	struct Point4{T <: Complex, U <: AbstractFloat, V <: Integer}
		x::T
		y::
end

# ╔═╡ 5794cee0-f387-4a03-9516-281a7df48a86
md"""
## Control Flow
"""

# ╔═╡ c1ac1a00-cdb0-4b85-9b4b-3d2fa665e4b9
md"""
### if/else loop
"""

# ╔═╡ 9358f4df-012e-45cf-b6b9-02dd9ee748fe


# ╔═╡ c809a5a9-ec5b-4f92-891d-5920fd7e5027
md"""
### for loop
"""

# ╔═╡ 62a0c7f0-fdd3-4b2e-9006-0bdd7eb86ca2


# ╔═╡ a739a50e-417b-475f-98ee-1092f2ee2426
md"""
### while loop
"""

# ╔═╡ be07d54e-ca78-4d29-a5bc-5973437affdd


# ╔═╡ 89d6bf19-44e6-4384-8a42-8066a9196dd6
md"""
### error handling
"""

# ╔═╡ 61565bf6-b688-4ffa-a43f-73f631ea8480


# ╔═╡ 858aa086-21bf-4a66-94ec-b4e76834778e
md"""
## Functions
"""

# ╔═╡ d8a685c6-7325-44f2-8da0-a9cdbc6cb757
md"""
## Recursion
"""

# ╔═╡ 4c92f471-8c70-4f5a-9dda-be6efc686fbc
md"""
## Input/Output (I/O)
"""

# ╔═╡ 267780e2-534a-4038-999c-078b1c753daa
md"""
## Packages/Libraries

"""

# ╔═╡ 1129fabc-6593-47f1-9c6a-a435fdc910a8
md"""
## The challenge!

For the final section, we will be performing a simple exercise that can be found in many programming interviews. You will have 10 minutes to complete the exercise, thereafter we will go over the possible solutions together. You can test your function by running the same cell where the function is.

**Good luck :)**
"""

# ╔═╡ 73b9c0f6-456e-4929-bd78-6f982258e19c
md"""
### FizzBuzz! 

FizzBuzz is a word game that is meant to teach schoolchildren how division works. This is a simpler version of the game, BUT like in the original there is a little pitfall that catches many new programmers by surprise!

Given an integer `n`, return a specific string based on the following conditions:

- `"Fizzbuzz"` if `n` is divisible by 15 (meaning both 3 AND 5)
- `"Fizz"` if `n` is divisible by 3
- `"Buzz"` if `n` is divisible by 5
- `""` (empty string) if none of the other conditions are true


> **Hint**
> Programming languages _iterate_ over each line from top to bottom. Therefore in your `if/else` loop, watch out for which condition is evaluated first!

"""

# ╔═╡ 83642231-26c5-403d-8eb6-4d4ed65f1040
# ╠═╡ show_logs = false
begin
	function fizzbuzz(n::Int)::String
		#Add your function body here
	end

	@test fizzbuzz(30) == "FizzBuzz"
	@test fizzbuzz(25) == "Buzz"
	@test fizzbuzz(21) == "Fizz"
	@test fizzbuzz(19) == ""
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Test = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.2"
manifest_format = "2.0"
project_hash = "71d91126b5a1fb1020e1098d9d492de2a4438fd2"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
"""

# ╔═╡ Cell order:
# ╠═26746842-452b-11ee-11bc-99241d6fb2a6
# ╟─7e63c1e0-7627-4d26-bc01-21332de6be16
# ╟─5c18083b-b530-4e75-b70d-0bf47c0cf3a2
# ╟─f603f377-8697-4d09-8610-c9369501a857
# ╟─9cec5f6d-3957-452b-898d-233bd44c77ec
# ╠═7f92b572-d0de-4a8a-ad5c-4a2ddc7ce7f6
# ╟─b7b8c1ea-4c0a-4b0d-937a-d46a20b96ea9
# ╠═43ee935e-ec0d-4277-84f5-9c9926aacb31
# ╟─eeef418b-465d-4643-8f89-f04dd820e1b9
# ╠═b18387c5-f0aa-4a67-9826-665bcacec2ff
# ╟─529eda59-76ee-4446-853f-be2774e08992
# ╠═e191d28c-d534-46c2-96ee-95b7280ac9df
# ╟─4624fe4b-4f0d-48f4-9bee-44546e2e4144
# ╠═62a2d5be-261e-413f-9879-9ecb6214ac50
# ╟─71fef82f-5494-480c-a825-76771b7383f8
# ╠═797670e0-443e-4cb3-bdb3-ca8fc1b9c288
# ╟─f7ce7abd-cbe9-45be-b36d-d80f4fe3171c
# ╠═85707728-42c5-466c-8a11-5f2c8a64a5ce
# ╟─1d2dfcc5-a2ff-4577-9643-e96cf67813f3
# ╠═ae27464d-53e2-4dde-a36f-9a872be109a5
# ╟─19898457-a9ab-413c-b917-7fcb500d8a9b
# ╠═7b9445c4-5f32-40fa-badb-59bd2d5b6887
# ╟─c120e2bb-91f3-402c-ba79-5e3e794c48e5
# ╠═9627e9c7-d663-45ce-86db-ed5407b4ce3b
# ╟─0e1a55a1-e787-4b9d-b490-a6eb7af7af86
# ╟─6a95b42a-28ab-4368-a13a-954d2c6c2aca
# ╠═c5994f47-fcb9-4a8c-a975-e668a605a489
# ╠═4ff97b5e-38d3-466a-8b25-1058c0650841
# ╠═0989d007-7085-434d-9dfb-f84115635c38
# ╠═47fa73d0-5116-4cc1-9a7f-03c12a733c4f
# ╠═6c454cda-6711-471c-9f67-46f6046acb95
# ╠═a15b5f76-0435-4ff6-b6f7-287e9ba39175
# ╠═898f79af-b5bf-47b7-9528-e39dd058b021
# ╠═d39f9e89-7a4c-4749-b7b1-014f6d7ed241
# ╠═87215b16-287c-4c3b-bf66-d14c8a90b1d9
# ╠═5794cee0-f387-4a03-9516-281a7df48a86
# ╠═c1ac1a00-cdb0-4b85-9b4b-3d2fa665e4b9
# ╠═9358f4df-012e-45cf-b6b9-02dd9ee748fe
# ╠═c809a5a9-ec5b-4f92-891d-5920fd7e5027
# ╠═62a0c7f0-fdd3-4b2e-9006-0bdd7eb86ca2
# ╠═a739a50e-417b-475f-98ee-1092f2ee2426
# ╠═be07d54e-ca78-4d29-a5bc-5973437affdd
# ╠═89d6bf19-44e6-4384-8a42-8066a9196dd6
# ╠═61565bf6-b688-4ffa-a43f-73f631ea8480
# ╠═858aa086-21bf-4a66-94ec-b4e76834778e
# ╠═d8a685c6-7325-44f2-8da0-a9cdbc6cb757
# ╠═4c92f471-8c70-4f5a-9dda-be6efc686fbc
# ╠═267780e2-534a-4038-999c-078b1c753daa
# ╟─1129fabc-6593-47f1-9c6a-a435fdc910a8
# ╟─73b9c0f6-456e-4929-bd78-6f982258e19c
# ╟─8cd75e7b-3111-4d5a-ae02-18f913cd242e
# ╠═83642231-26c5-403d-8eb6-4d4ed65f1040
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002

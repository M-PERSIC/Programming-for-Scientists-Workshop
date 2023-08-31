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

# ╔═╡ 26746842-452b-11ee-11bc-99241d6fb2a6
md"""
# Welcome to Programming for Scientists!
"""

# ╔═╡ 7e63c1e0-7627-4d26-bc01-21332de6be16
md"""
## What is a programming language?
"""

# ╔═╡ f603f377-8697-4d09-8610-c9369501a857
md"""
## How does this work?

We are in what is known as a **notebook**! Specifically, it is a **WYSIWYG** (What You See Is What You Get) environment for working with code within individual blocks known as _cells_. 

This specific environment is called a [Pluto](https://plutojl.org/) notebook, which is designed for Julia. It comes with a few features that help make programming with notebooks a breeze, which we will explore over the course of this workshop.
"""

# ╔═╡ 9cec5f6d-3957-452b-898d-233bd44c77ec
md"""
## Before we begin...
"""

# ╔═╡ eeef418b-465d-4643-8f89-f04dd820e1b9
md"""
## Variables

A **variable** is a name that is tied to a value stored in memory. We can keep data stored with a name that can be shared
"""

# ╔═╡ 319ece9e-ebe5-4d2d-baee-03dc70e31f26
# x = 1

# ╔═╡ 71fef82f-5494-480c-a825-76771b7383f8
md"""
## Types
"""

# ╔═╡ 37e9fbec-4a1d-45e2-9a1e-d803002d1b25
md"""
### primitive types
"""

# ╔═╡ ee529521-9a11-4fa3-be0e-4e8d366086f6


# ╔═╡ 1d2dfcc5-a2ff-4577-9643-e96cf67813f3
md"""
### composite (product) types
"""

# ╔═╡ 7b529915-abc5-409d-8558-fd942773eafc
#=
struct Point
	x
	y
end
=#

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

# ╔═╡ Cell order:
# ╟─26746842-452b-11ee-11bc-99241d6fb2a6
# ╠═7e63c1e0-7627-4d26-bc01-21332de6be16
# ╠═f603f377-8697-4d09-8610-c9369501a857
# ╠═9cec5f6d-3957-452b-898d-233bd44c77ec
# ╟─eeef418b-465d-4643-8f89-f04dd820e1b9
# ╠═319ece9e-ebe5-4d2d-baee-03dc70e31f26
# ╟─71fef82f-5494-480c-a825-76771b7383f8
# ╟─37e9fbec-4a1d-45e2-9a1e-d803002d1b25
# ╠═ee529521-9a11-4fa3-be0e-4e8d366086f6
# ╟─1d2dfcc5-a2ff-4577-9643-e96cf67813f3
# ╠═7b529915-abc5-409d-8558-fd942773eafc
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

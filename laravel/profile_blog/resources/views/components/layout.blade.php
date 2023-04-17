<!doctype html>

<title>Nahiarism</title>
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>

<style>
    html {
        scroll-behavior: smooth;
    }

    .clamp {
        display: -webkit-box;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    .clamp.one-line {
        -webkit-line-clamp: 1;
    }
</style>

<body style="font-family: Open Sans, sans-serif;" class="h-screen">
    <section class="flex flex-col h-full">
        <nav class="px-6 py-8 md:flex md:justify-between md:items-center">
            <div>
                <a href="/" class="text-xs font-bold uppercase mx-5 text-red-500">/Home</a>
                <a href="/about" class="text-xs font-bold uppercase mx-5 text-red-500">/About</a>
                @if ((auth()->user()->username ?? null) == "sendmeabouquet" )
                <a href="/admin/posts" class="text-xs font-bold uppercase mx-5 text-red-500">/You're an admin!</a>
                @endif
            </div>

            <div class="mr-8 mt-8 md:mt-0 flex items-center">
                @auth
                    <x-dropdown>
                        <x-slot name="trigger">
                            <button class="text-xs font-bold uppercase">
                                Welcome, {{ auth()->user()->name }}!
                            </button>
                        </x-slot>

                        @admin
                            <x-dropdown-item
                                href="/admin/posts"
                                :active="request()->is('admin/posts')"
                            >
                                Dashboard
                            </x-dropdown-item>

                            <x-dropdown-item
                                href="/admin/posts/create"
                                :active="request()->is('admin/posts/create')"
                            >
                                New Post
                            </x-dropdown-item>
                        @endadmin

                        <x-dropdown-item
                            href="#"
                            x-data="{}"
                            @click.prevent="document.querySelector('#logout-form').submit()"
                        >
                            Log Out
                        </x-dropdown-item>

                        <form id="logout-form" method="POST" action="/logout" class="hidden">
                            @csrf
                        </form>
                    </x-dropdown>
                @else
                    <a href="/register"
                       class="text-xs font-bold uppercase {{ request()->is('register') ? 'text-red-500' : '' }}">
                        Register
                    </a>

                    <a href="/login"
                       class="ml-6 text-xs font-bold uppercase {{ request()->is('login') ? 'text-red-500' : '' }}">
                        Log In
                    </a>
                @endauth

            </div>
        </nav>

        <div class="flex-1">
            {{ $slot }}
        </div>

        <footer id="newsletter"
                class="bg-gray-100 border border-black border-opacity-5 rounded-xl text-center py-16 px-10 mt-16"
        >
            <h5 class="text-3xl">Nahiar Blogs</h5>
            <p class="text-sm mt-3">Untuk memenuhi tugas Sistem Informasi Web Framework. I don't know what else to put.</p>

        </footer>
    </section>

    <x-flash/>
</body>

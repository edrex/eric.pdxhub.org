Liquid is the template system used by Jekyll. It is designed to provide basic output control for customers who are building their own sites/emails/what-have-you but hosting in your system, while preventing them from doing things which might adversely affect system security or performance.

. Even in a secure sandbox, a bit of Ruby code could easily consume lots of system resources.

So Liquid is designed to not only be secure, but to minimize the opportunity for the template author to write inefficient code. Here is a list of some of the capabilities the language *doesn't* support, along with my guess as to why.

Newly in Jekyll 1.1, *includes can take parameters*. This makes Liquid seem more like a real modular language, with the includes acting as reusable modules. For example:

```{% raw %}
{% include my-sidebar.html title="Blarghing!" %}
{% endraw %}```

You can also use variables as 

## Grid renderer

how to render a table of posts?

posts.html
  takes a list of posts
  takes an optional "view" argument
    processed by a case statement

```{% raw %}
{% wtf is this? %}
{% endraw %}```
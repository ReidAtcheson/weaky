# A simple wiki generator




## Purpose

Using Markdown, Write a simple wiki using relative links like [this one](linked.md). 

View on Github normally, or for offline viewing execute the following


```
  >> sh genmk.sh
  >> make 
```


which replaces markdown links with html links and uses pandoc to generate the html.



## Nice features

* No restriction on directory structure. 
  * Do whatever you want. Put files wherever you want.
  * for example this [link](example/my_custom_structure/link.md)
* Extremely simple.



## What's included

a .ignore file containing Makefile. It changes if you add new directories or markdown files.



## How to use

1. clone/fork this repository.
2. start writing markdown.


## Dependencies

* Pandoc (markdown --> html conversion)
* sed (find markdown links, change to html links)
* bash (makefile generator)

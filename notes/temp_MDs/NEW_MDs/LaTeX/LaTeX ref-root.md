[[Preamble]]

# Environments
| Environment name | Details                                       |
| ---------------- | --------------------------------------------- |
| document         | sets up the document structure                |
| center           | centers the text on the page                  |
| flushright       | right-justifies the text on the page          |
| flushleft        | left-justifies the text on the page           |
| tabular          | a text table environment                      |
| array            | a math table environment                      |
| align            | a numbered math environment with alignment    |
| align*           | an unnumbered math environment with alignment |

some other environments are :
- ```\[``` $\leftrightarrow$ ```\begin{displaymath}```
-  ```\]``` $\leftrightarrow$ ```\end{displaymath}```
- ```\(``` $\leftrightarrow$ ```\begin{math}```
-  ```\)``` $\leftrightarrow$ ```\end{math}```

---
### More environments:
##### Lists
$$
\documentclass{article}
\begin{document}
    \begin{itemize}
        \item First item
    \end{itemize}
\end{document}
$$
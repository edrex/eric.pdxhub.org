<pre>
git help add /--patch

       -p, --patch
           Interactively choose hunks of patch between the index and the work tree and add them to the index. This gives the user a chance to review the
           difference before adding modified contents to the index.

           This effectively runs add --interactive, but bypasses the initial command menu and directly jumps to the patch subcommand. See "Interactive mode" for
           details.

Stage this hunk [y,n,q,a,d,/,s,e,?]? ?
y - stage this hunk
n - do not stage this hunk
q - quit; do not stage this hunk nor any of the remaining ones
a - stage this hunk and all later hunks in the file
d - do not stage this hunk nor any of the later hunks in the file
g - select a hunk to go to
/ - search for a hunk matching the given regex
j - leave this hunk undecided, see next undecided hunk
J - leave this hunk undecided, see next hunk
k - leave this hunk undecided, see previous undecided hunk
K - leave this hunk undecided, see previous hunk
s - split the current hunk into smaller hunks
e - manually edit the current hunk
? - print help
</pre>
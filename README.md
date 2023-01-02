# About RedditNoBot
Bot per il subreddit r/SabakuNoMaiku. Il codice comprende una serie di metodi utili per cancellare post, calcolare la durata di una playlist intera ed altro ancora. Il codice comprende [l'API di Youtube](https://developers.google.com/youtube/v3) e [PRAW](https://praw.readthedocs.io/en/stable/index.html). 

A reddit bot for r/SabakuNoMaiku. The code contains a series of utility method to delete post from Reddit or calculating the duration of a playlist and other things. The code make use of [Youtube API](https://developers.google.com/youtube/v3) and [PRAW](https://praw.readthedocs.io/en/stable/index.html).


---
## Installation and running
Per installare il bot, occorre scaricare o clonare la repository e utilizzare [[https://github.com/kiurem66/RedditNoBot/blob/main/Makefile| Makefile]]. Per eseguire makefile, tramite terminale spostarsi nella cartella dove si è salvata la repository e dentro di essa utilizzare `sudo make install` oppure come root, dopodiché aspettare il termine dell'installazione.
**ATTENZIONE**: Occorre eseguire `make install` tramite sudo oppure come root, altrimenti l'installazione fallirà.
La cartella di installazione del bot è `/opt/SabakuNoBot`, si può cambiare modificando la variabile BASE all'interno del Makefile. Per eliminare il bot e tutti i suoi file si può eseguire `sudo make clean` oppure come root `make clean` o cancellando la cartella di installazione. È possibile usare `make help` per mostrare un piccolo aiuto.

Il file BotReddit.py contiene tutti gli script che vengono utilizzati. Per utilizzare il bot è sufficiente eseguire il file startBot.sh tramite `./startBot.sh` oppure manualmente attivando il virtual environment e `python /pathto/BotReddit.py`.

EN
To install the bot, clone or download the repository and use the [[https://github.com/kiurem66/RedditNoBot/blob/main/Makefile| Makefile]]. To use the makefile, via terminal go to the directory where you saved the repository and inside use `sudo make install` or as root `make install`, after that wait till installation is done. 
**DISCLAIMER**: You need to run `make install` with sudo or as root otherwise it won't work.
The installation folder of the bot is `/opt/SabakuNoBot`, you can change it by changing, the BASE variable inside Makefile. You can delete everything via `sudo make clean` or running as root `make clean`, or deleting the installation folder. For help use `make help`. 

The file BotReddit.py contains the scripts used by the bot to do stuff. To run the bot, you can use `./startBot.sh` or activating the virtual environment and using `python /pathto/BotReddit.py`.

---

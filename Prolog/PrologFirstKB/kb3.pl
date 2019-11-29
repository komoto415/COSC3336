angry(andy).
calm(joe).
hungry(andy).
hungry(joe).
plays76(andy):- angry(andy), bored(andy).
bored(andy):- hungry(andy).
listensMusic(andy):- calm(andy).
listensMusic(C):- hungry(C).
listensMusic(joe):- calm(joe).

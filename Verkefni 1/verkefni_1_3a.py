def word_count(str):
    counts = dict()
    words = str.split()

    for word in words:
        if word in counts:
            counts[word] += 1
        else:
            counts[word] = 1

    return counts

text = input("Sláðu inn texta: ")
ToBeSorted = word_count(text)

for w in sorted(ToBeSorted, key=ToBeSorted.get, reverse=True):
    print (w + ":", ToBeSorted[w])


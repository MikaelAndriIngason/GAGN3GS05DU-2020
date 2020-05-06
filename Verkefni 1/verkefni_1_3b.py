def word_count(str):
    negative = ["látin", "látnir", "látin", "miður", "hrædd", "dó", "dánir", "hræddir", "dauðir", "dauð", "dauður", "lítið", "hræddur", "erfitt", "erfiðir", "skuld", "skuldir", "neikvætt", "neikvæð", "leiðinlegt", "þreytt", "slys", "slasaðist", "slysið"]
    positive = ["vel", "gott", "frí", "sáttir", "sátt", "hjálpað", "hjálp", "hjálpa", "hlotið", "jákvætt", "jákvæð", "nýtt", "ný", "nýja", "góða", "góður", "góð", "jákvæðri", "vinsælt", "vinsælustu", "skemmtilegt", "njóta"]
    words = str.split()

    outcome = [0,0] #Fyrsta stakið er jákvætt og seinna er neikvætt

    for word in words:
        if word.lower().replace(",", "").replace(".", "") in positive:
            outcome[0] += 1
        if word.lower().replace(",", "").replace(".", "") in negative:
            outcome[1] += 1

    return outcome

text = input("Sláðu inn texta: ")
status = word_count(text)

print("---------")

if status[0] > status[1]:
    print("Þetta er jákvæð frétt")
elif status[0] < status[1]:
    print("Þetta er neikvæð frétt")
else:
    print("Þetta er bæði neikvæð og jákvæð frétt")



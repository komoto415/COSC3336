from functools import reduce
from random import random

def main():

    print("In this program we execute a variety of methods in  a non-functional paradigm")
    print("First we will do mapping.")
    names = ['Mary', 'Isla', 'Sam']

    secret_names = list(map(hash, names))

    for i in range(len(names)):
        names[i] = hash(names[i])

    print(names)
    print(secret_names)

    val = [0,1,2,3,4,5]
    sum = 0
    for i in val:
        sum += i

    my_sum = reduce(lambda a,b:a+b, val)
    print(my_sum)
    print(sum)

    print("But what if we want to use something other than numbers? Say word count")
    sentences = ['Mary read a story to Sam and Isla.', 'Isla cuddled Sam.','Sam chortled.','Sam was a silly man indeed Sam I am']

    sam_count = 0
    for sentence in sentences:
        sam_count += sentence.count('Sam')

    my_sam_count = 0
    func_sam_count = reduce(lambda my_sam_count, sentence: my_sam_count + sentence.count('Sam'), sentences, 0)

    print(func_sam_count)
    print(sam_count)


    print("\n\nLet us now look at a more complicated example")
    people = [{'name': 'Mary', 'height': 160}, {'name': 'Isla', 'height': 80}, {'name': 'Sam'}, {'name': 'Joan', 'height': 100}]
    print(type(people))

    height_total = 0
    height_count = 0
    for person in people:
        if 'height' in person:
            height_total += person['height']
            height_count += 1

    if height_count > 0:
        average_height = height_total / height_count

    heights = list(map(lambda x:x['height'], filter(lambda y: 'height' in y, people)))
    # print(heights)
    z = (reduce(lambda a,b: (a+b), heights))/len(heights)
    print(z)

    print(average_height)


    print("\n\nNow let us look at very nonfunctional code, which will then be made more functional over time")

    time = 5
    car_positions = [1, 1, 1]

    while time:
        # decrease time
        time -= 1
        print('')
        for i in range(len(car_positions)):
            # move car
            if random() > 0.3:
                car_positions[i] += 1

            # draw car
            print( '-' * car_positions[i])

    print("BOB")

    time = 5;
    car_positions = [1,1,1]

    # decrement for loop
    # 4 --> 0
    # for x in range(time-1,-1,-1)

    def change(curPos):
        if random() > 0.3:
            curPos += 1
        print(curPos * '-')
        return curPos

    while time:
        time -= 1
        print('')
        car_positions = list(map(change, car_positions))

    # print(h)
    # z =
    # for i in range(len(car_positions)):
    # print(h[i] * '-')


    print("Let us look at a few more functions")
    print(rule_sequence('0101', [zero, one, zero]))
    print(rule_sequence('0101', [zero, zero]))

    bands = [{'name': 'band numero uno', 'country': 'UK', 'active': False},
         {'name': 'this is. The. second. BAND.', 'country': 'Germany', 'active': False},
         {'name': 'tre', 'country': 'Spain', 'active': True}]

    format_bands(bands)
    print(bands)


def zero(s):
    if s[0] == "0":
        return s[1:]

def one(s):
    if s[0] == "1":
        return s[1:]

def rule_sequence(s, rules):
    for rule in rules:
        s = rule(s)
        if s == None:
            break

    return s


def format_bands(bands):
    for band in bands:
        band['country'] = 'Canada'
        band['name'] = band['name'].replace('.', '')
        band['name'] = band['name'].title()


main()

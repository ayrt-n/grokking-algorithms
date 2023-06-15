Give the runtime for each of these scenarios in terms of Big O
1.3) You have a name, and you want to find the person's phone number in the phone book.
  Given phone book is sorted alphabetically, you could find the phone number in O(log n) by using binary search

1.4 You have a phone number, and you want to find the person's name in the phone book.
  Phone numbers are not sorted, therefore we'd need to search through every record in the worst case, i.e., O(n)

1.5) You want to read the numbers of every person in the phone book.
  If we want to read the numbers of every person, we need to look through every record, i.e., O(n)

1.6) You want to read the numbers of just the "A" records.
  O(n)

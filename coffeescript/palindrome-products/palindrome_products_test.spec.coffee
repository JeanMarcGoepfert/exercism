Palindromes = require('./palindromes')

describe "Palindrome", ->

  it "smallest palindrome from single digit factors", ->
    palindromes = new Palindromes({maxFactor: 9})
    palindromes.generate()
    smallest = palindromes.smallest()
    expect(smallest.value).toEqual(1)
    expect([[[1, 1]]]).toContain(smallest.factors)

  it "largest palindrome from single digit factors", ->
    palindromes = new Palindromes({maxFactor: 9})
    palindromes.generate()
    largest = palindromes.largest()
    expect(largest.value).toEqual(9)
    expect([[[3, 3], [1, 9]], [[1, 9], [3, 3]]]).toContain(largest.factors)

  it "largest palindrome from double digit factors", ->
    palindromes = new Palindromes({ maxFactor: 99, minFactor: 10 })
    palindromes.generate()
    largest = palindromes.largest()
    expect(largest.value).toEqual(9009)
    expect(largest.factors).toEqual([[91, 99]])

  it "smallest palindrome from double digit factors", ->
    palindromes = new Palindromes({ maxFactor: 99, minFactor: 10 })
    palindromes.generate()
    smallest = palindromes.smallest()
    expect(smallest.value).toEqual(121)
    expect(smallest.factors).toEqual([[11, 11]])

  it "largest palindrome from triple digit factors", ->
    palindromes = new Palindromes({ maxFactor: 999, minFactor: 100 })
    palindromes.generate()
    largest = palindromes.largest()
    expect(largest.value).toEqual(906609)
    expect(largest.factors).toEqual([[913, 993]])

  it "smallest palindrome from triple digit factors", ->
    palindromes = new Palindromes({ maxFactor: 999, minFactor: 100 })
    palindromes.generate()
    smallest = palindromes.smallest()
    expect(smallest.value).toEqual(10201)
    expect(smallest.factors).toEqual([[101, 101]])

  it "largest palindrome from 4 digit factors", ->
    palindromes = new Palindromes({ maxFactor: 9999, minFactor: 1000 })
    palindromes.generate()
    largest = palindromes.largest()
    expect(largest.value).toEqual(99000099)
    expect(largest.factors).toEqual([[9901, 9999]])

  it "smallest palindrome from 4 digit factors", ->
    palindromes = new Palindromes({ maxFactor: 9999, minFactor: 1000 })
    palindromes.generate()
    smallest = palindromes.smallest()
    expect(smallest.value).toEqual(1002001)
    expect(smallest.factors).toEqual([[1001, 1001]])


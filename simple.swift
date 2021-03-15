while let line = readLine() {

  let words = line.split { $0.isWhitespace }

  var counts = [String:Int]()

  for word in words {
    let canon = word.lowercased()
    counts[canon, default: 0] += 1
  }

  let ordered = counts.sorted { $0.1 > $1.1 }

  ordered.forEach { entry in
    print(entry.key, entry.value.description)
  }
}

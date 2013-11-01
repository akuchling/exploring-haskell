
message = [("Subject", "Message"), ("Message-Id", "<1234@example.com>")]
headers = [ fst pair | pair <- message]


-- Triangle example
allTriangles = [(a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10]]
rightTriangles = [ (a,b,c) | (a,b,c) <- allTriangles, a*a + b*b == c*c ]
perimTriangles = [ (a,b,c) | (a,b,c) <- rightTriangles, a+b+c == 24]

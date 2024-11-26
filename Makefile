all:
	javac Auction.java

run:
	java -cp .:./postgresql-42.6.0.jar Auction db19311711 changethis

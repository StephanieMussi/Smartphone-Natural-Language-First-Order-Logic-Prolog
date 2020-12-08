competitor(sumsum, appy).
smart_phone_tech(galactical-s3).
product_of(galactical-s3, sumsum).
stolen_by(galactical-s3, stevey).
boss(stevey).
rival(X):- competitor(X, appy).
business(X):- smart_phone_tech(X).
unethical(X):- boss(X), stolen_by(Y, X), business(Y), product_of(Y, Z), rival(Z).



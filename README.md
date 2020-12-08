# Smartphone_Natural_Language_First_Order_Logic_Prolog
In this project, the natrual language is translated to First-Order-Logic, and then coded as Prolog clauses.  

## Natural Language Statement
sumsum, a competitor of appy, developed some nice smart phone technology called galacticas3, all of which was stolen by stevey, who is a boss. It is unethical for a boss to steal business from rival companies. A competitor of appy is a rival. Smart phone technology is business.  

From the above description, these statements can be extracted:  
* Sumsum is a competitor of appy.  
* Galactical-s3 is a smart phone technology.  
* Galactical-s3 is a product of sumsum.  
* Galactical-s3 is stolen by Stevey.  
* Stevey is a boss.  
* A competitor of appy is a rival.  
* Smart phone technology is business.  
* It is unethical for a boss to steal business from rival companies.  

## First-Order-Logic (FOL)  
In correspondence of the natural language statements above, the following FOL statements are obtained:  
Competitor(Sumsum, Appy)  
Smart_Phone_Tech(Galactical-s3)  
Product_Of(Galactical-s3, Sumsum)  
Stolen_By(Galactical-s3, Stevey)  
Boss(Stevey)  
∀x, Competitor(x, Appy) ⇒ Rival(x)  
∀x, Smart_Phone_Tech (x) ⇒ Business(x)  
∀x, ∃ y, z, Boss(x) Λ Stolen_By(y, x) Λ Business(y) Λ Product_Of(y, z) Λ Rival(z) ⇒ Unethical(x)  

## Prolog
The Prolog clauses are: 
```prolog
competitor(sumsum, appy).
smart_phone_tech(galactical-s3).
product_of(galactical-s3, sumsum).
stolen_by(galactical-s3, stevey).
boss(stevey).
rival(X):- competitor(X, appy).
business(X):- smart_phone_tech(X).
unethical(X):- boss(X), stolen_by(Y, X), business(Y), product_of(Y, Z), rival(Z).
```

Using the above clauses, Stevey is shown to be unethical.  
The tracking is as below:   
<img src = "https://github.com/StephanieMussi/Smartphone_Natural_Language_First_Order_Logic_Prolog/blob/main/Figures/track.png" width = 609 height = 319>  



#! /usr/local/bin/python3

def crible(upper):
    """
    Entrée: limite supérieure
    Sortie: Itérateur sur les entiers premiers inférieurs ou égaux à n
    """
    non_primes = set()
    for i in range(2, upper+1):
        if i not in non_primes:
            yield i
            non_primes.update(range(i*i, upper+1, i))

print("--- CRIBLE D'ERATOSTHENE ---")
limit = int(input("Limite supérieure (>= 2): "))
while limit < 2:
    limit = int(input("Limite supérieure (>= 2): "))

print([prime for prime in crible(n)])

function sieve(n)
    a = trues(n)
    a[1] = false
    for i = 1:n
        if a[i]
            j = i * i
            if j > n
                return find(a)
            else
                a[j:i:n] = false
            end
        end
    end
end

print("Entrer la limite supérieure:")
limit = parse(UInt8, readline())
while limit < 2
    print("La limite supérieure doit être >= à 2")
    limit = parse(UInt8, readline())
end

print(sieve(limit))
print('\n')
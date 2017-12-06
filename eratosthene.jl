function sieve(lim :: UInt64)
    is_prime :: Array = trues(lim)
    llim :: Int = isqrt(lim)
    result :: Array = [2]  #Initial array
    for i = 3:2:lim
        if is_prime[i]
            if i <= llim
                for j = i*i:2*i:lim
                    is_prime[j] = false
                end

            end
            push!(result,i)
        end
    end
    return result
end

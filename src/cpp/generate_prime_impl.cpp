#include "generate_prime_impl.hpp"
#include <string>
 
namespace generateprime {
    
    std::shared_ptr<GeneratePrime> GeneratePrime::create() {
        return std::make_shared<GeneratePrimeImpl>();
    }
    
    GeneratePrimeImpl::GeneratePrimeImpl() {
 
    }

    bool isPrime(int number)
    {
        if (number == 2 || number == 3)
            return true;
        
        if (number % 2 == 0 || number % 3 == 0)
            return false;
        
        int divisor = 6;
        while (divisor * divisor - 2 * divisor + 1 <= number)
            {
            
            if (number % (divisor - 1) == 0)
                return false;
            
            if (number % (divisor + 1) == 0)
                return false;
            
            divisor += 6;
            
            }
        
        return true;

    }
    
    std::int32_t GeneratePrimeImpl::generate_prime(int32_t a)
    {

        while (!isPrime(++a)) 
        { }
        return a;

    }

    
}

#pragma once
 
#include "generate_prime.hpp"
 
namespace generateprime {
    
    class GeneratePrimeImpl : public generateprime::GeneratePrime {
        
    public:
        
        // Constructor
        GeneratePrimeImpl();
        
        // Our method that returns a int
        std::int32_t generate_prime(int32_t a);
       
    };
    
}

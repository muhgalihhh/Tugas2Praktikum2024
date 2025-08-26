#include<iostream>
using namespace std;

int main() {
    int x, n;
    cin >> x >> n;
    
    int ans = 1;  // Initialize to 1, not 0
    
    while(n > 0) {  // Changed condition from n<=0 to n>0
        ans *= x;
        n--;
    }
    
    cout << ans;  // Output ans, not x
    return 0;
}
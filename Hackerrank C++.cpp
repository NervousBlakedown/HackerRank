// Basic Data Types.
#include <iostream>
#include <cstdio>
using namespace std;

int main() {
    printf("Hello, World!");
    int a; long b; char c; float d; double e;
cin>>a>>b>>c>>d>>e;
cout<<a<<endl;
cout<<b<<endl;
cout<<c<<endl;
cout.precision(3);
cout<<fixed<<d<<endl;
cout.precision(9);
cout<<fixed<<e<<endl;
return 0;
}

// Say "Hello, World!".
#include <iostream>
#include <cstdio>
using namespace std;

int main() {
    printf("Hello, World!");
    return 0;
}

// Input and Output.
#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int a,b,c,sum;

cin>>a>>b>>c;
sum=a+b+c;

cout<<sum;

    return 0;
}

// Conditional Statements.
int main() {
int in;
string num[10] = {"Greater than 9", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};

cin >> in;

if(in > 9){
    cout << num[0];
}
else{
    cout << num[in];
}

return 0;
}

// For Loop.
#include <iostream>
#include <cstdio>
using namespace std;

int main() {
    int i,c,b;
    string a[11]={"even","odd","one","two","three","four","five","six","seven","eight","nine"};
    cin>>c>>b;
    for(i=c;i<=b;i++)
    {
        if((i>9) && (i%2==0))  cout<<a[0]<<endl;
        else if((i>9) && (i%2!=0)) cout<<a[1]<<endl;
        else    cout<<a[i+1]<<endl;
    }
    return 0;
}

// Functions.

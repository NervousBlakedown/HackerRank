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
#include <iostream>
#include <cstdio>
using namespace std;

int max_of_four(int a, int b, int c, int d){
    int ans;
    if (a > b && a > c && a > d)
        ans = a;
    else if (b > c && b > d)
        ans = b;
    else if (c > d)
        ans = c;
    else
        ans = d;
    return ans;
    }

int main() {
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    int ans = max_of_four(a, b, c, d);
    printf("%d", ans);

    return 0;
}

// Pointer. (A way to share a memory address among different contexts.)
#include <stdio.h>

void update(int *a,int *b) {
    int sum = *a + *b;
    int absDifference = *a - *b > 0 ? *a - *b : -(*a - *b);
    *a = sum;
    *b = absDifference;

}

int main() {
    int a, b;
    int *pa = &a, *pb = &b;

    scanf("%d %d", &a, &b);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}

// Arrays Introduction.
#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int N,i=0;
    cin>>N;
    int *A = new int[N];
    while(std::cin>>A[i++]);
    while(std::cout<<A[--N]<<' ' && N);
    delete[] A;
    return 0;
} 

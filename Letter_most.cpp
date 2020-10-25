#include<bits/stdc++.h>
#define ASCII_SIZE 256
using namespace std;
char getMaxOccuringChar(char* str)
{
    int n = 0;
    int count[ASCII_SIZE] = {0};
    int len = strlen(str);
    int max = 0;
    char result;
    for (int i = 0; i < len; i++) {
        count[str[i]]++;
        if (max < count[str[i]]) {
            max = count[str[i]];
            result = str[i];
            n++;
        }
    }
cout<<n<<endl;
    return result;
}
int main()
{
    char str[1000];
    int len;
    cin>>len;
    for(int i=0;i<len;i++){
    cin>>str[i];
    }
    getMaxOccuringChar(str);
}

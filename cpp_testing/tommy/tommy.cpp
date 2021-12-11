/* CSCI1540
 * Assiagnment: 3
 * SID: 1155126178 
 * Name: Tommy Lam Ka Lok
 * Email: 1155126178@link.cuhk.edu.hk
 *
 */


#include <iostream>
using namespace std;
int main () 
{
    int mis[2] = { 0, 0 };
    int can[2] = { 0, 0 };
    int cap, checking = 0, tmis, tcan, term = 0, LR = 0;
    while (checking == 0)
    {
        cout << "Enter #missionaries #cannibals: ";
        cin >> mis[0];
        cin >> can[0];
    
        cout << "Enter boat capacity: ";
        cin >> cap;
    
        if (mis[0] > 0 && can[0] > 0 && cap > 1 && mis[0] >= can[0])
            checking = 1;
        else
            cout << "Invalid input! Enter again." << endl;
    }
    
    checking = 0 ;
    
    while (checking == 0)
    {
        while (checking == 0)
        {
            LR = term % 2;
            cout << mis[0] << "M" << can[0] << "C ";
            
            if (LR == 0)
                cout << "\\_/~~~ ";
            else
                cout << "~~~\\_/ ";
            
            cout << mis[1] << "M" << can[1] << "C" << endl;
            
            if ((can[0] > mis[0] && mis[0] > 0) || (can[1] > mis[1] && mis[1] > 0))
            {
                cout << "Missionaries eaten! RIP." << endl;
                return 0;
            }
            else if (mis[0] == 0 && can[0] == 0)
            {
                cout << "Well done!" << endl;
                return 0;
            }
            else
            checking = 1;
        }
        
        checking = 0;
        
        while (checking == 0)
        {
            cout << "Enter #m #c on board: ";
            cin >> tmis;
            cin >> tcan;
            
            if (tmis > -1 && tcan > -1 && tmis + tcan > 0 && tmis + tcan <= cap 
            && tmis <= mis[LR] && tcan <= can[LR])
                checking = 1;
            else
                cout << "Invalid input! Enter again." << endl;
        }
        
        checking = 0;
        
        mis[LR] = mis[LR] - tmis;
        mis[(LR + 1) % 2] = mis[(LR + 1) % 2] + tmis;
        can[LR] = can[LR] - tcan;
        can[(LR + 1) % 2] = can[(LR + 1) % 2] + tcan;
        term++;
    }
}

#include <bits/stdc++.h>
using namespace std;

int main() {
  vector<string> files = {"nvim", "nyxt", "foot", "sway"};
  for (int f = 0; f < files.size(); f++) {
    string command = "cp -r ~/.config/" + files[f] + " .";
    system(command.c_str());
  }
}

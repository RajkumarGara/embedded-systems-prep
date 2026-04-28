# C++ STL Cheat Sheet

A compact C++ libraries cheat sheet.

---

## 1. `unordered_map` (Hash Map)

```cpp
#include <unordered_map>
using namespace std;

unordered_map<int, int> mp;
```

| Function        | Use                | TC       |
| --------------- | ------------------ | -------- |
| `mp[key] = val` | Insert / Update    | `O(n)`   |
| `mp[key]++`     | Frequency count    | `O(n)`   |
| `mp.insert(...)`| Insert if absent   | `O(n)`   |
| `mp.emplace(...)` | In-place insert  | `O(n)`   |
| `mp.find(key)`  | Search             | `O(n)`   |
| `mp.count(key)` | Check existence    | `O(n)`   |
| `mp.erase(key)` | Remove             | `O(n)`   |
| `mp.size()`     | Number of elements | `O(1)`   |

### Example

```cpp
for (auto &p : mp) {
    cout << p.first << " " << p.second << endl;
}

if (mp.find(x) != mp.end()) {
    cout << "found" << endl;
}
```

`mp[key]` inserts a default value if `key` is missing, so use `find()` when you only want lookup.

---

## 2. `unordered_set`

```cpp
#include <unordered_set>

unordered_set<int> st;
```

| Function       | Use                | TC       |
| -------------- | ------------------ | -------- |
| `st.insert(x)` | Add                | `O(n)`   |
| `st.erase(x)`  | Remove             | `O(n)`   |
| `st.find(x)`   | Search             | `O(n)`   |
| `st.count(x)`  | Exists?            | `O(n)`   |
| `st.size()`    | Number of elements | `O(1)`   |

---

## 3. `map` (Ordered Map)

```cpp
#include <map>

map<int, int> mp;
```

| Function        | Use             | TC         |
| --------------- | --------------- | ---------- |
| `mp[key] = val` | Insert / Update | `O(log n)` |
| `mp.insert(...)`| Insert if absent | `O(log n)` |
| `mp.find(key)`  | Search          | `O(log n)` |
| `mp.count(key)` | Exists?         | `O(log n)` |
| `mp.erase(key)` | Remove          | `O(log n)` |
| `mp.begin()`    | Smallest key    | `O(1)`     |
| `mp.rbegin()`   | Largest key     | `O(1)`     |

Keys stay sorted in ascending order.

---

## 4. `set`

```cpp
#include <set>

set<int> st;
```

| Function            | Use        | TC         |
| ------------------- | ---------- | ---------- |
| `st.insert(x)`      | Add        | `O(log n)` |
| `st.erase(x)`       | Remove     | `O(log n)` |
| `st.find(x)`        | Search     | `O(log n)` |
| `st.lower_bound(x)` | First >= x | `O(log n)` |
| `st.upper_bound(x)` | First > x  | `O(log n)` |

### Example

```cpp
auto it = st.lower_bound(x);
if (it != st.end()) cout << *it << endl;
```

---

## 5. `vector`

```cpp
#include <vector>

vector<int> v;
```

| Function         | Use            | TC      |
| ---------------- | -------------- | ------- |
| `v.push_back(x)` | Add at end     | amortized `O(1)`, worst `O(n)` |
| `v.pop_back()`   | Remove end     | `O(1)`  |
| `v[i]`           | Access         | `O(1)`  |
| `v.back()`       | Last element   | `O(1)`  |
| `v.size()`       | Size           | `O(1)`  |
| `v.reserve(n)`   | Reserve capacity | `O(n)` |
| `v.resize(n)`    | Change size    | `O(n)`  |
| `v.insert(it, x)`| Insert at pos  | `O(n)`  |
| `v.erase(it)`    | Erase at pos   | `O(n)`  |
| `v.begin()`      | Start iterator | `O(1)`  |
| `v.end()`        | End iterator   | `O(1)`  |

### Useful

```cpp
vector<int> v(n, 0);
sort(v.begin(), v.end());
reverse(v.begin(), v.end());
v.erase(v.begin() + i);
```

---

## 6. `algorithm`

```cpp
#include <algorithm>
#include <numeric>
```

| Function                                   | Use                 | TC         |
| ------------------------------------------ | ------------------- | ---------- |
| `sort(v.begin(), v.end())`                 | Ascending sort      | `O(n log n)` |
| `sort(v.begin(), v.end(), greater<int>())` | Descending sort     | `O(n log n)` |
| `reverse(v.begin(), v.end())`              | Reverse             | `O(n)`     |
| `find(v.begin(), v.end(), x)`              | Linear search       | `O(n)`     |
| `count(v.begin(), v.end(), x)`             | Count value         | `O(n)`     |
| `max(a, b)`                                | Maximum             | `O(1)`     |
| `min(a, b)`                                | Minimum             | `O(1)`     |
| `swap(a, b)`                               | Swap                | `O(1)`     |
| `binary_search(v.begin(), v.end(), x)`     | Search sorted array | `O(log n)` |
| `lower_bound(v.begin(), v.end(), x)`       | First >= x          | `O(log n)` |
| `upper_bound(v.begin(), v.end(), x)`       | First > x           | `O(log n)` |
| `max_element(v.begin(), v.end())`          | Max element         | `O(n)`     |
| `min_element(v.begin(), v.end())`          | Min element         | `O(n)`     |
| `accumulate(v.begin(), v.end(), 0)`        | Sum                 | `O(n)`     |
| `next_permutation(v.begin(), v.end())`     | Next lexicographic permutation | `O(n)` |

### Custom sort

```cpp
sort(v.begin(), v.end(), [](auto &a, auto &b) {
    return a.second < b.second;
});
```

---

## 7. `stack`

```cpp
#include <stack>

stack<int> st;
```

| Function     | Use         |
| ------------ | ----------- |
| `st.push(x)` | Add         |
| `st.pop()`   | Remove top  |
| `st.top()`   | Peek top    |
| `st.size()`  | Current size |
| `st.empty()` | Check empty |

---

## 8. `queue`

```cpp
#include <queue>

queue<int> q;
```

| Function    | Use         | TC      |
| ----------- | ----------- | ------- |
| `q.push(x)` | Enqueue     | `O(1)`  |
| `q.pop()`   | Dequeue     | `O(1)`  |
| `q.front()` | Front       | `O(1)`  |
| `q.back()`  | Back        | `O(1)`  |
| `q.size()`  | Current size | `O(1)` |
| `q.empty()` | Check empty | `O(1)`  |

---

## 9. `priority_queue` (Heap)

```cpp
#include <queue>

priority_queue<int> pq; // max heap
```

| Function     | Use        | TC         |
| ------------ | ---------- | ---------- |
| `pq.push(x)` | Insert     | `O(log n)` |
| `pq.pop()`   | Remove top | `O(log n)` |
| `pq.top()`   | Largest    | `O(1)`     |
| `pq.empty()` | Check empty | `O(1)`    |

### Min Heap

```cpp
priority_queue<int, vector<int>, greater<int>> pq;

priority_queue<pair<int, int>, vector<pair<int, int>>, greater<pair<int, int>>> minpq;
```

---

## 10. `deque`

```cpp
#include <deque>

deque<int> dq;
```

| Function           | Use          | TC      |
| ------------------ | ------------ | ------- |
| `dq.push_back(x)`  | Add end      | `O(1)`  |
| `dq.push_front(x)` | Add front    | `O(1)`  |
| `dq.pop_back()`    | Remove end   | `O(1)`  |
| `dq.pop_front()`   | Remove front | `O(1)`  |
| `dq.front()`       | First        | `O(1)`  |
| `dq.back()`        | Last         | `O(1)`  |

Useful when you need `O(1)` insert/remove from both ends.

---

## 11. `pair`

```cpp
#include <utility>

pair<int, int> p = {1, 2};
```

| Function / Syntax | Use | TC |
| ----------------- | --- | -- |
| `p.first` | First value | `O(1)` |
| `p.second` | Second value | `O(1)` |
| `make_pair(a, b)` | Create pair | `O(1)` |

### Useful

```cpp
vector<pair<int, int>> vp;
vp.push_back({2, 5});
sort(vp.begin(), vp.end()); // sorts by first, then second
```

---

## 12. `string`

```cpp
#include <string>

string s = "hello";
```

| Function                      | Use            | TC      |
| ----------------------------- | -------------- | ------- |
| `s.length()` / `s.size()`     | Length         | `O(1)`  |
| `s.empty()`                   | Empty?         | `O(1)`  |
| `s.substr(i, len)`            | Substring      | `O(len)` |
| `s.find("abc")`               | Find substring | implementation-dependent |
| `s.push_back(c)`              | Add char       | `O(1)`  |
| `s.pop_back()`                | Remove char    | `O(1)`  |
| `reverse(s.begin(), s.end())` | Reverse        | `O(n)`  |

### Useful

```cpp
int x = stoi("123");
string s = to_string(123);
getline(cin, s);

if (s.find("abc") != string::npos) {
    cout << "found" << endl;
}
```

---

# Must-Know Patterns

## Fast Input

```cpp
ios::sync_with_stdio(false);
cin.tie(nullptr);
```

## Frequency Count

```cpp
unordered_map<int, int> freq;
for (int x : nums) freq[x]++;
```

## Sort by second value

```cpp
vector<pair<int, int>> vp;
sort(vp.begin(), vp.end(), [](auto &a, auto &b) {
    return a.second < b.second;
});
```

## Two Sum

```cpp
unordered_map<int, int> mp;
for (int i = 0; i < nums.size(); i++) {
    if (mp.count(target - nums[i])) {
        return {mp[target - nums[i]], i};
    }
    mp[nums[i]] = i;
}
```

## Common Loops

```cpp
for (auto x : v) {}
for (auto &p : mp) {}
for (auto &[key, val] : mp) {}
```

---

## Focus Areas

* Hash map / set
* Sorting and custom comparators
* Sliding window
* Two pointers
* Stack / queue / deque basics
* Heap basics
* Binary search
* Prefix sum / accumulate

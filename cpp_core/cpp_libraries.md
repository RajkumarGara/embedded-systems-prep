# C++ OA / LeetCode STL Cheat Sheet

A compact cheat sheet for Online Assessments and coding interviews.

---

## 1. `unordered_map` (Hash Map)

```cpp
#include <unordered_map>
using namespace std;

unordered_map<int, int> mp;
```

| Function        | Use                | Time Complexity |
| --------------- | ------------------ | --------------- |
| `mp[key] = val` | Insert / Update    | O(1)            |
| `mp[key]++`     | Frequency count    | O(1)            |
| `mp.find(key)`  | Search             | O(1)            |
| `mp.count(key)` | Check existence    | O(1)            |
| `mp.erase(key)` | Remove             | O(1)            |
| `mp.size()`     | Number of elements | O(1)            |

### Example

```cpp
for (auto &p : mp) {
    cout << p.first << " " << p.second << endl;
}
```

---

## 2. `unordered_set`

```cpp
#include <unordered_set>

unordered_set<int> st;
```

| Function       | Use                | Time Complexity |
| -------------- | ------------------ | --------------- |
| `st.insert(x)` | Add                | O(1)            |
| `st.erase(x)`  | Remove             | O(1)            |
| `st.find(x)`   | Search             | O(1)            |
| `st.count(x)`  | Exists?            | O(1)            |
| `st.size()`    | Number of elements | O(1)            |

---

## 3. `map` (Ordered Map)

```cpp
#include <map>

map<int, int> mp;
```

| Function        | Use             | Time Complexity |
| --------------- | --------------- | --------------- |
| `mp[key] = val` | Insert / Update | O(log n)        |
| `mp.find(key)`  | Search          | O(log n)        |
| `mp.count(key)` | Exists?         | O(log n)        |
| `mp.erase(key)` | Remove          | O(log n)        |
| `mp.begin()`    | Smallest key    | O(1)            |

---

## 4. `set`

```cpp
#include <set>

set<int> st;
```

| Function            | Use        | Time Complexity |
| ------------------- | ---------- | --------------- |
| `st.insert(x)`      | Add        | O(log n)        |
| `st.erase(x)`       | Remove     | O(log n)        |
| `st.find(x)`        | Search     | O(log n)        |
| `st.lower_bound(x)` | First >= x | O(log n)        |
| `st.upper_bound(x)` | First > x  | O(log n)        |

---

## 5. `vector`

```cpp
#include <vector>

vector<int> v;
```

| Function         | Use            | Time Complexity |
| ---------------- | -------------- | --------------- |
| `v.push_back(x)` | Add at end     | O(1)            |
| `v.pop_back()`   | Remove end     | O(1)            |
| `v[i]`           | Access         | O(1)            |
| `v.size()`       | Size           | O(1)            |
| `v.begin()`      | Start iterator | O(1)            |
| `v.end()`        | End iterator   | O(1)            |

### Useful

```cpp
vector<int> v(n, 0);
sort(v.begin(), v.end());
reverse(v.begin(), v.end());
```

---

## 6. `algorithm`

```cpp
#include <algorithm>
#include <numeric>
```

| Function                                   | Use                 |
| ------------------------------------------ | ------------------- |
| `sort(v.begin(), v.end())`                 | Ascending sort      |
| `sort(v.begin(), v.end(), greater<int>())` | Descending sort     |
| `reverse(v.begin(), v.end())`              | Reverse             |
| `max(a, b)`                                | Maximum             |
| `min(a, b)`                                | Minimum             |
| `swap(a, b)`                               | Swap                |
| `binary_search(v.begin(), v.end(), x)`     | Search sorted array |
| `lower_bound(v.begin(), v.end(), x)`       | First >= x          |
| `upper_bound(v.begin(), v.end(), x)`       | First > x           |
| `max_element(v.begin(), v.end())`          | Max element         |
| `min_element(v.begin(), v.end())`          | Min element         |
| `accumulate(v.begin(), v.end(), 0)`        | Sum                 |

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
| `st.empty()` | Check empty |

---

## 8. `queue`

```cpp
#include <queue>

queue<int> q;
```

| Function    | Use         |
| ----------- | ----------- |
| `q.push(x)` | Enqueue     |
| `q.pop()`   | Dequeue     |
| `q.front()` | Front       |
| `q.back()`  | Back        |
| `q.empty()` | Check empty |

---

## 9. `priority_queue` (Heap)

```cpp
#include <queue>

priority_queue<int> pq; // max heap
```

| Function     | Use        |
| ------------ | ---------- |
| `pq.push(x)` | Insert     |
| `pq.pop()`   | Remove top |
| `pq.top()`   | Largest    |

### Min Heap

```cpp
priority_queue<int, vector<int>, greater<int>> pq;
```

---

## 10. `deque`

```cpp
#include <deque>

deque<int> dq;
```

| Function           | Use          |
| ------------------ | ------------ |
| `dq.push_back(x)`  | Add end      |
| `dq.push_front(x)` | Add front    |
| `dq.pop_back()`    | Remove end   |
| `dq.pop_front()`   | Remove front |
| `dq.front()`       | First        |
| `dq.back()`        | Last         |

---

## 11. `string`

```cpp
#include <string>

string s = "hello";
```

| Function                      | Use            |
| ----------------------------- | -------------- |
| `s.length()`                  | Length         |
| `s.substr(i, len)`            | Substring      |
| `s.find("abc")`               | Find substring |
| `s.push_back(c)`              | Add char       |
| `s.pop_back()`                | Remove char    |
| `reverse(s.begin(), s.end())` | Reverse        |

### Useful

```cpp
int x = stoi("123");
string s = to_string(123);
```

---

# OA Must-Know Patterns

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
```

---

## Focus Areas

* Hash Map / Set
* Sorting
* Sliding Window
* Two Pointers
* Stack / Queue basics
* Heap basics
* Binary Search

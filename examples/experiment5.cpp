#include <iostream>
#include <vector>

class TraceClass {
  public:
  std::vector<int> values;
  TraceClass() {
    std::cout << this << " object created" << std::endl;
  }
};

void test_function(TraceClass&& obj=TraceClass()) {
  obj.values.push_back(1);
  std::cout << "test_function called, values.size() = "
            << obj.values.size() << std::endl;
}

int main(void) {
  std::cout << "test code starts" << std::endl;
  test_function();
  test_function();

  return 0;
}

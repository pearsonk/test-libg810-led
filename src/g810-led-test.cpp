#include <g810-led/Keyboard.h>
#include <unistd.h>
#include <strings.h>

int main()
{
  LedKeyboard* keyboard = new LedKeyboard();

  delete keyboard;
}

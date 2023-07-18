#include <stdio.h>
#include <unistd.h>

enum
{
  FALSE = 0,
  TRUE = 1
};

#define WHITESPACE " "
#define NEWLINE    "\n"
#define NO         "n"

static void
print_args (int   argc,
	    char *argv[])
{
  while (TRUE)
    {
      for (int i = 1; i < argc; i++)
        {
	  int length = 0;

	  while (argv[i][length] != '\0')
            {
	      length += 1;
	    }

          write (0, argv[i], length);
	  write (0, WHITESPACE, 1);
	}

      write (0, NEWLINE, 1);
    }
};

int
main(int   argc,
     char *argv[])
{
  if (argc > 1)
    {
      print_args (argc, argv);
      return 0;
    }

  while (TRUE)
   {
     write (0, NO, 1);
     write (0, NEWLINE, 1);
   }

  return 0;
}


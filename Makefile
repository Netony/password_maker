NAME = passwd_maker
SOURCES = main.c

# ******************************************************** #

SRCS = $(SOURCES)
OBJS = $(SRCS:.c=.o)

# ******************************************************** #

MAKE = make
CC = gcc
RM = rm

CFLAGS = -Wall -Werror -Wextra
RMFLAGS = -f

# ******************************************************** #
all : $(NAME)

clean :
	$(RM) $(RMFLAGS) $(OBJS)

fclean : 
	$(RM) $(RMFLAGS) $(OBJS)
	$(RM) $(RMFLAGS) $(NAME)

re :
	$(MAKE) fclean
	$(MAKE) all

.PHONY: all clean fclean re

# ******************************************************** #

$(NAME) : $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

$(OBJS) : $(SRCS)
	$(CC) $(CFLAGS) $< -c

# ******************************************************** #

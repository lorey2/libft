NAME		= 	libft.a
CFLAGS		= -Wall -Werror -Wextra -I. -c
FILES		= 	ft_isalpha.c				ft_memset.c					ft_atoi.c			ft_bzero.c\
				ft_isalnum.c				ft_isascii.c				ft_isdigit.c		ft_isprint.c\
				ft_memchr.c					ft_memcmp.c					ft_memcpy.c			ft_memmove.c\
				ft_strchr.c					ft_strlen.c					ft_strncmp.c		ft_strnstr.c\
				ft_strrchr.c				ft_tolower.c				ft_toupper.c		ft_strlcpy.c\
				ft_strlcat.c				ft_calloc.c					ft_strdup.c			ft_substr.c\
				ft_strjoin.c				ft_putchar_fd.c				ft_putstr_fd.c		ft_putendl_fd.c\
				ft_itoa.c					ft_putnbr_fd.c				ft_strmapi.c		ft_striteri.c\
				ft_strtrim.c				ft_split.c
BONUS_FILES	=	ft_lstnew_bonus.c			ft_lstadd_front_bonus.c		ft_lstsize_bonus.c	ft_lstlast_bonus.c\
				ft_lstadd_back_bonus.c		ft_lstdelone_bonus.c		ft_lstclear_bonus.c	ft_lstiter_bonus.c\
				ft_lstmap_bonus.c
OBJ			= $(FILES:%.c=%.o)
BONUS_OBJ	= $(BONUS_FILES:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

bonus: $(NAME) $(BONUS_OBJ)
	ar rcs $(NAME) $(BONUS_OBJ)

# Pattern rule to compile .c files into .o files
%.o: %.c
	gcc $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJ) $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean fclean all re bonus

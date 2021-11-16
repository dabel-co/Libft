# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dabel-co <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/08 10:36:13 by dabel-co          #+#    #+#              #
#    Updated: 2021/11/16 15:23:35 by dabel-co         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Werror -Wextra 
AR = ar rc
CC = cc
OBJ_DIR = obj
OBJB_DIR = obj
OBJE_DIR = obj
SRC_DIR = src
SRC = 	atoi \
		bzero \
		memcpy \
		memset \
		memccpy \
		memchr \
		memmove \
		memcmp \
		strlen \
		isalpha \
		isalnum \
		isdigit \
		isascii \
		isprint \
		toupper \
		tolower \
		strchr \
		strrchr \
		strncmp \
		strlcpy \
		strlcat \
		strnstr \
		calloc \
		strdup \
		substr \
		strjoin \
		strtrim \
		split \
		itoa \
		strmapi \
		putchar_fd \
		putstr_fd \
		putendl_fd \
		putnbr_fd \

BONUS = lstnew \
		lstadd_front \
		lstsize \
		lstlast \
		lstadd_back \
		lstdelone \
		lstclear \
		lstiter \
		lstmap \

EXTRA = atoi_pointer \
		isnumber \
		lst_repeat \
		lst_order \

C = $(addprefix src/ft_, $(addsuffix .c, $(SRC)))
O = $(addprefix $(OBJ_DIR)/ft_, $(addsuffix .o, $(SRC)))
Cbonus = $(addprefix src/ft_, $(addsuffix .c, $(BONUS)))
Obonus = $(addprefix $(OBJB_DIR)/ft_, $(addsuffix .o, $(BONUS)))
Cextra = $(addprefix src/ft_, $(addsuffix .c, $(EXTRA)))
Oextra = $(addprefix $(OBJE_DIR)/ft_, $(addsuffix .o, $(EXTRA)))

$(NAME) : create_dir $(O)
	@$(AR) $(NAME) $(O)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJB_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJE_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(FLAGS) -c $< -o $@

bonus : $(NAME) $(Obonus)
	@$(AR) $(NAME) $(O) $(Obonus)
extra : bonus $(Oextra)
	@$(AR) $(NAME) $(O) $(Obonus) $(Oextra)
create_dir : 
	@mkdir -p obj
clean:
	@rm -rf $(OBJ_DIR)
fclean: clean
	@rm -f $(NAME)
all: $(NAME)

re: fclean all
.PHONY : all clean fclean bonus extra

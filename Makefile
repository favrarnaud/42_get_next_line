# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afavre <afavre@student.42lausanne.ch>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/26 10:35:33 by afavre            #+#    #+#              #
#    Updated: 2022/11/07 13:28:57 by afavre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Variables

NAME		= get_next_line
INCLUDE		= include
LIBFT		= libft
SRC_DIR		= ./
OBJ_DIR		= obj/
CC			= gcc
CFLAGS		= -Wall -Werror -Wextra 
SANITIZE	= -g3 -fsanitize=address
RM			= rm -f
AR			= ar rcs

# Colors

DEF_COLOR = \033[0;39m
GRAY = \033[0;90m
RED = \033[0;91m
GREEN = \033[0;92m
YELLOW = \033[0;93m
BLUE = \033[0;94m
MAGENTA = \033[0;95m
CYAN = \033[0;96m
WHITE = \033[0;97m

#Sources

SRC_FILES	=	get_next_line get_next_line_utils


SRC 		= 	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJ 		= 	$(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC_FILES)))

###

OBJF		=	.cache_exists

all:		$(NAME)

$(NAME):	$(OBJ)
			@$(AR) -c $(NAME) $(OBJ)
			@echo "$(GREEN)GNL compiled!$(DEF_COLOR)"

$(OBJ_DIR)%.o: $(SRC_DIR)%.c | $(OBJF)
			@echo "$(YELLOW)Compiling: $< $(DEF_COLOR)"
			@$(CC) -DBUFFER_SIZE=10 $(CFLAGS) $(SANITIZE) -c $< -o $@

$(OBJF):
			@mkdir -p $(OBJ_DIR)

run : $(NAME)
			@./$(NAME)

clean:
			@$(RM) -rf $(OBJ_DIR)
			@echo "$(BLUE)GNL object files cleaned!$(DEF_COLOR)"

fclean:		clean
			@$(RM) -f $(NAME)
			@echo "$(CYAN)GNL executable files cleaned!$(DEF_COLOR)"

re:			fclean all
			@echo "$(GREEN)Cleaned and rebuilt everything for GNL!$(DEF_COLOR)"

.PHONY:		all clean fclean re

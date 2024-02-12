# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sadoming <sadoming@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/19 12:00:39 by sadoming          #+#    #+#              #
#    Updated: 2024/02/12 19:43:25 by sadoming         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
# ------------------ #
# Flags:

CC = gcc
CFLAGS = -Wall -Wextra -Werror -g
# ------------------ #
# Directories:

OBJ_DIR = ./obj
CNV_DIR = ./ft_cnv
MEM_DIR = ./ft_mem
STR_DIR = ./ft_str
WRT_DIR = ./ft_wrt

LST_DIR = ft_lst/

# ------------------- #
# Sorces:

MAK = Makefile
LIB = ./include/libft.h

CNV_SRC = ft_atoi.c ft_itoa.c ft_strcapitalize.c ft_to_upplow.c
WRT_SRC = ft_printf.c ft_printf_fd.c ft_write_cast.c ft_write_cast_fd.c
MEM_SRC = ft_calloc.c ft_free.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c
STR_SRC = ft_split.c ft_strchr.c ft_strcmp.c ft_strcpy.c ft_strcut.c ft_strinter.c\
		  ft_strjoin.c ft_strlen.c ft_strstr.c ft_strtrim.c ft_substr.c

LST_SRC = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c\
		  ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstlast_bonus.c\
		  ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c

SRC = ft_gnl/get_next_line.c
SRC += $(addprefix $(CNV_DIR)/, $(CNV_SRC))
SRC += $(addprefix $(MEM_DIR)/, $(MEM_SRC))
SRC += $(addprefix $(STR_DIR)/, $(STR_SRC))
SRC += $(addprefix $(WRT_DIR)/, $(WRT_SRC))
SRC += $(addprefix $(LST_DIR)/, $(LST_SRC))
OBJ = $(SRC:.c=.o)
# ******************************************************************************* #
#-------------------------------------------------------------#
all: mobj
#-------------------------------------------------------------#
#-------------------------------------------------------------#
help:
	@echo "\033[1;37m\n ~ Posible comands:\n"
	@echo "\t~ all  \t\t #-> Make $(NAME)\n"
	@echo "\t~ clean \t #-> Clean *.o\n"
	@echo "\t~ fclean \t #-> Clean all\n"
	@echo "\t~ clear \t #-> Clean all & clear\n"
	@echo "\t~ norm \t\t #-> Run norminette\n"
	@echo "\t~ re   \t\t #-> Redo $(NAME)\n"
	@make -s author

#-------------------------------------------------------------#
#-------------------------------------------------------------#
author:
	@echo "\033[1;34m\n~ **************************************** ~\n"
	@echo "\n   ~ \t      Made by Sadoming \t        ~\n"
	@echo "\n~ **************************************** ~\n\n"
#-------------------------------------------------------------#
#-------------------------------------------------------------#
norm:
	@echo "\n\033[1;93m~ Norminette:\n"
	@norminette -R CheckForbiddenSourceHeader
	@echo "\n~~~~~~~~~~~~~~~~~~~~~~\n"
	@norminette
	@echo "\033[1;32m\n ~ Norminette:\t~ OK\n"
	@echo "~~~~~~~~~~~~~~~~~~~~~~\n"
#-------------------------------------------------------------#
#-------------------------------------------------------------#
# ******************************************************************************* #
# Compiling Region:

mobj: $(OBJ_DIR)
	@echo "\nProcesing...\n"
	@make -s $(OBJ)
	@echo "\033[1;35m OBJS Compiled!\n"
	@echo "\033[1;33m Compiling $(NAME)...\n"
	@make -s $(NAME)
	@echo "\t\t\t\t\t\t\033[1;34m  ~ DONE! ~\n"

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

$%.o: %.c $(LIB) $(MAK)
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME):
	@ar rc $(NAME) $(OBJ)
	@echo "\033[1;32m Libft Compiled Successfully\033[1;97m\n"

# ********************************************************************************* #
# Clean region

clean:
	@/bin/rm -frd $(OBJ_DIR)
	@/bin/rm -f $(TMP)
	@echo "\033[1;34m\n All obj removed\033[1;97m\n"


fclean: clean
	@/bin/rm -f $(NAME)
	@find . -name ".DS_Store" -type f -delete
	@echo "\033[1;34m All cleaned succesfully\033[1;97m\n"

clear: fclean
	@clear

re: fclean all
# -------------------- #
.PHONY: all author clean clear fclean help mobj norm re
# ********************************************************************************** #

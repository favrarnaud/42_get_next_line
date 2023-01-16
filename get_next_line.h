/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: afavre <afavre@student.42lausanne.ch>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/04 08:06:37 by afavre            #+#    #+#             */
/*   Updated: 2022/11/07 10:41:52 by afavre           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

// Macros

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 42
# endif

// Includes

//TODO remove this shit
# include <stdio.h>
# include <fcntl.h>
# include <unistd.h>
# include <stdlib.h>

// main file
char	*get_next_line(int fd);

// utils file
char	*ft_strjoin(char const *s1, char const *s2);
char	*ft_strchr(const char *string, int searchedChar);
void	*ft_calloc(size_t elementCount, size_t elementSize);
size_t	ft_strlen(const char *str);
void	ft_bzero(void *s, size_t n);
#endif
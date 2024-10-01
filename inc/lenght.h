/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   lenght.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sadoming <sadoming@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/22 16:16:34 by sadoming          #+#    #+#             */
/*   Updated: 2024/10/01 13:50:32 by sadoming         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LENGHT_H
# define LENGHT_H

# include <stdlib.h>

/* LENGHT */
size_t	ft_arr_strlen(char **s);

size_t	ft_strlen(const char *s);
size_t	ft_cnttoch_in(const char *str, char c);
size_t	ft_cnttoch_out(const char *str, char c);
size_t	ft_cnt_tostr(const char *haystack, const char *needle);
size_t	ft_numlen(size_t n, int base);

#endif

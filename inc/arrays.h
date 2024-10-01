/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   arrays.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sadoming <sadoming@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/01 18:09:37 by sadoming          #+#    #+#             */
/*   Updated: 2024/10/01 18:22:44 by sadoming         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ARRAYS_H
# define ARRAYS_H

# include <stdlib.h>

/* ARRAYS */
size_t	ft_arrsize(void **s);
size_t	ft_arrsize_str(char **s);

char	**ft_strarrdup(char **to_copy);

#endif

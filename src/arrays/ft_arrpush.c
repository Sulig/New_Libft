/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_arrpush.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sadoming <sadoming@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/01 18:55:30 by sadoming          #+#    #+#             */
/*   Updated: 2024/10/01 19:01:58 by sadoming         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/arrays.h"
#include "../../inc/memory.h"

/*
* Push `add` into a new array (on last position)
* ** this is on progress, this not protect if add is NULL
*/
void	**arrpush(void **original, void *add)
{
	void	**new_arr;
	size_t	size;
	size_t	i;

	i = -1;
	size = ft_arrsize(original);
	new_arr = ft_calloc(sizeof(void *), size + 2);
	if (!new_arr)
		return (NULL);
	while (++i < size)
		new_arr[i] = duplicate_token(original[i]);
	new_arr[i] = duplicate_token(add);
	original = ft_free_ptr(original);
	return (new_arr);
}

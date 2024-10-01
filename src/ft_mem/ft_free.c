/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_free.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sadoming <sadoming@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/09 17:30:11 by sadoming          #+#    #+#             */
/*   Updated: 2024/10/01 13:50:03 by sadoming         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>

void	donothing(void *ptr)
{
	if (ptr)
		ptr = NULL;
}

void	*ft_free_str(char *str)
{
	if (str)
		free(str);
	str = NULL;
	return (NULL);
}

/*
void	*ft_free_arr(char **arr)
{
	size_t	size;

	size = ft_arr_strlen(arr);
	if (size)
		while (size--)
			arr[size] = ft_free_str(arr[size]);
	if (arr)
		free(arr);
	arr = NULL;
	return (NULL);
}
*/

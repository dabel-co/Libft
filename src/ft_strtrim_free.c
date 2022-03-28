/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim_free.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vguttenb <vguttenb@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/07 14:29:37 by dabel-co          #+#    #+#             */
/*   Updated: 2022/03/23 16:36:52 by vguttenb         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strtrim_free(char *s1, char const *set)
{
	int		x;
	char	*aux;
	char	*ret;
	
	if (!s1 || !set)
		return (NULL);
	aux = s1;
	while (*s1 && ft_strchr(set, *s1))
		s1++;
	if (!*s1)
		ret = ft_strdup("");
	else 
	{
		x = ft_strlen(s1) - 1;
		while (x && ft_strchr(set, s1[x]))
			x--;
		ret = ft_substr(s1, 0, x + 1);
	}
	free(aux);
	return (ret);
}

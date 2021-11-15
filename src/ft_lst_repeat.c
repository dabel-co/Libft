/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lst_repeat.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dabel-co <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/15 19:33:37 by dabel-co          #+#    #+#             */
/*   Updated: 2021/11/15 19:47:04 by dabel-co         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_lst_repeat(t_list *a, int x)
{
	t_list *aux;
	int		t;

	aux = a;
	while (aux->next != NULL)
	{
		t = (int)aux->content;
		printf("-%d %d\n", t, x);
		if (t == x)
			return (-1);
		aux = aux->next;
	}
	return (0);
}

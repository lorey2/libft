/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lorey <lorey@student.42lausanne.ch>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/03 15:59:54 by lorey             #+#    #+#             */
/*   Updated: 2024/10/07 15:08:00 by lorey            ###   LAUSANNE.ch       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcpy(char *dst, const char *src, size_t dstsize)
{
	size_t	i;
	size_t	src_len;

	i = -1;
	src_len = 0;
	if (dstsize < 1)
		return (ft_strlen(src));
	while (src[++i] && i < dstsize - 1)
		dst[i] = src[i];
	dst[i] = '\0';
	return (ft_strlen(src));
}

#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int	main(void)
{
	char	password[4];
	int		i;
	int		j;

	srand(time(0));
	i = 0;
	while (i < 4)
	{
		password[i] = '0' + rand() % 10;
		j = 0;
		while (j < i)
		{
			if (password[j] == password[i]) // 지금까지 쌓은 것 중에 중복된 게 있는가?
				break;
			j++;
		}
		if (j == i) 
			i++;
	}
	printf("%s\n", password);
	return (0);
}

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

extern int	ft_strlen(char *str);
extern char	*ft_strcpy(char *dest, char *src);
extern int	ft_strcmp(char *dest, char *src);
extern int	ft_write(int fd, const void *buf, int size);

int	main()
{
	char	hello[13] = "Hello World!";

	ft_write(1, &hello, ft_strlen(hello));
	return (0);
}

num = input('Digite um número: ')


if num.isnumeric():
  num = int(num)
  if num % 2 == 0:
    print(f'O número {num} e par')
  if num % 2 != 0:
    print(f'O número {num} é impar')
else:
  print('Valor invalido')

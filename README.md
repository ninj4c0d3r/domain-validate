# Domain Validate
Utilize a ferramenta para verificar se um determinado dominio existe.

### Demonstração
![Logo](https://github.com/ninj4c0d3r/domain-validate/blob/master/domain.png)

## Como utilizar
- Digite os dominios no arquivo **website.txt**
- ```chmod 777 domain-validate.sh```
- ```./domain-validate.sh```

### Extra
- Enumeração de subdominios com o [AMASS](https://github.com/OWASP/Amass)
- ```amass enum --passive -d yourdomain.com```
- Copie os dominios que ele achou e cole no **website.txt**

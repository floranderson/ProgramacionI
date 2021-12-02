#include <stdio.h>

int dnis[130];
char nombres[130][50];
int horasTrabajadas[130];
int categorias[130];

int precioHoraPlanta = 2000;
int precioHoraAdministrativo = 1500;
int precioHoraVendedor = 1000;

const int tam = 130;

int bandera = 0;
int contadorPlanta = 0;
int contadorAdministrativo = 0;
int contadorVendedor = 0;

void cargarEmpleados();
void mostrarEmpleados();
void calcularYMostrarSueldoEmpleado();
void mostrarEmpleadosParaUnaCategoria();
void cantidadEmpleados();

void main()
{
    int opcion = 0;

    do
    {
        printf("\n1- Cargar empleados.");
        printf("\n2- Mostrar empleados.");
        printf("\n3- Mostrar sueldo de un empleado.");
        printf("\n4- Mostrar empleados para una categoria.");
        printf("\n5- Mostrar cantidad de empleados por categoria.");
        printf("\n6- Salir.\n\n");
        scanf("%d", &opcion);

        if(opcion != 6)
        {
            switch(opcion)
            {
                case 1: 
                    //Cargar empleados
                    cargarEmpleados();

                    break;

                case 2: 
                    if (bandera == 1)
                    {
                        //Mostrar empleados
                        mostrarEmpleados();
                    }
                    else
                    {
                        printf("Primero debe cargar los empleados. \n");
                    }
                    
                    break;

                case 3: 
                    if (bandera == 1)
                    {
                        //Mostrar sueldo de un empleado
                        calcularYMostrarSueldoEmpleado();
                    }
                    else
                    {
                        printf("Primero debe cargar los empleados. \n");
                    }
                    
                    break;

                case 4:
                    if (bandera == 1)
                    {
                        //Mostrar empleados para una categoría
                        mostrarEmpleadosParaUnaCategoria();
                    }
                    else
                    {
                        printf("Primero debe cargar los empleados. \n");
                    }
                    break;

                case 5:
                    if (bandera == 1)
                    {
                        cantidadEmpleados();
                    }
                    else
                    {
                        printf("Primero debe cargar los empleados. \n");
                    }
                    
                    break;
                
                case 6:
                    break;
                default:
                    printf("La opci%cn ingresada es inv%clida\n", 162, 160);
            }  
        }

    } while (opcion != 6);
}

void cargarEmpleados()
{
    int i = 0;
    
    bandera = 0;

    for(int i = 0; i < tam; i++)
    {

        printf("Nro. de DNI del empleado: \n");
        scanf("%d", &dnis[i]);

        while (dnis[i] < 1000000 || dnis[i] > 99999999)
        {
            printf("Nro. de DNI del empleado incorrecto, ingrese nuevamente: \n");
            scanf("%d", &dnis[i]);
        }      
        
        printf("Ingrese el mombre: \n");
        scanf("%s", &nombres[i]);

        printf("Ingrese la cantidad de horas trabajadas: \n");
        scanf("%d", &horasTrabajadas[i]);

        while (horasTrabajadas[i] < 0)
        {
            printf("Ingreso de horas incorrecta, ingrese nuevamente: \n");
            scanf("%d", &horasTrabajadas[i]);
        }
        
        
        printf("Ingrese la categoria: ");
        printf("\n1- Planta");
        printf("\n2- Administrativo");
        printf("\n3- Vendedor");
        printf("\n");
        scanf("%i", &categorias[i]);

        while (categorias[i] < 1 || categorias[i] > 3 )
        {
            printf("Ingreso incorrecto, intente nuevamente: \n");
            scanf("%i", &categorias[i]);
        }
        
        switch (categorias[i])
        {
        case 1:
            contadorPlanta = (contadorPlanta + 1);
            break;
        case 2:
            contadorAdministrativo = (contadorAdministrativo +1);
            break;
        case 3:
            contadorVendedor = (contadorVendedor + 1);
            break;
        default:
            break;
        }
        printf("\n");
    }
    bandera = 1;
}

void mostrarEmpleados()
{
    for(int i = 0; i < tam; i++)
    {
        printf(" %d \t", dnis[i]);
        printf(" %s \t", nombres[i]);
        printf(" %d hs \t", horasTrabajadas[i]);
        switch(categorias[i])
        {
            case 1:
                printf("Planta");
                break;
            case 2:
                printf("Administrativo");
                break;
            case 3:
                printf("Vendedor");
                break;
            default:
                printf("Categoria inv%clida\n", 160);
        }
        printf("\n");
    }
}

void calcularYMostrarSueldoEmpleado()
{
    int encontrado = 0;
    int nroDNI = 0;
    int sueldo = 0;
    int i = 0;

    printf("Nro de DNI del empleado:\n");	
    scanf("%d", &nroDNI);

    while (nroDNI < 1000000 || nroDNI > 99999999)
    {
        printf("Nro. de DNI del empleado incorrecto, ingrese nuevamente: \n");
        scanf("%d", &nroDNI);
    }

    for (i = 0; i < tam; i++)
    {
        if (nroDNI == dnis[i])
        {
            encontrado = 1;

            if (categorias[i] == 1)
            {
                sueldo = (horasTrabajadas[i]*precioHoraPlanta);
            }

            if (categorias[i] == 2)
            {
                sueldo = (horasTrabajadas[i]*precioHoraAdministrativo);
            }

            if (categorias[i] == 3)
            {
                sueldo = (horasTrabajadas[i]*precioHoraVendedor);
            }

            printf("%s, tiene un sueldo de %i.\n", nombres[i], sueldo);

        }
    }

    if (encontrado == 0)
    {
        printf("DNI inexistente.\n");
    }
}

void mostrarEmpleadosParaUnaCategoria()
{
    int i = 0;
    int cat = 0;
    int bandera = 0;

    printf("Categoria a buscar: ");
    printf("\n1- Planta");
    printf("\n2- Administrativo");
    printf("\n3- Vendedor");
    printf("\n");
    scanf("%i", &cat);

    while (cat < 1 || cat > 3)
    {
        printf("Ingreso incorrecto, ingrese nuevamente: \n");
        scanf("%i", &cat);
    }
    
    for (i = 0; i < tam; i++)
    {   
        if (categorias[i] == cat)
        {
            printf(" %d \t", dnis[i]);
            printf(" %s \t", nombres[i]);
            printf(" %i \t", categorias[i]);
            bandera = 1;
        }
    }
    if (bandera == 0)
    {
        printf("No existen empleados en esta categoria.\n");
    }
}

void cantidadEmpleados()
{
    printf("La cantidad de empleados en planta es de %i.\n", contadorPlanta);
    printf("La cantidad de empleados administrativos es de %i.\n", contadorAdministrativo);
    printf("La cantidad de empleados vendedores es de %i.\n", contadorVendedor);   
}
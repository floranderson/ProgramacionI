#include <stdio.h>

int dnis[130];
char nombres[130][50];
int horasTrabajadas[130];
int categorias[130];

int precioHoraPlanta = 2000;
int precioHoraAdministrativo = 1500;
int precioHoraVendedor = 1000;

const int tam = 130;

void cargarEmpleados();
void mostrarEmpleados();
void calcularYMostrarSueldoEmpleado();
void mostrarEmpleadosParaUnaCategoria();
int validardni();
void mostrarEmpleadosPorCategoria();

void main()
{
    int opcion = 0;
    int bandera=0; 

    do
    {
        printf("\n1- Cargar empleados.");
        printf("\n2- Mostrar empleados.");
        printf("\n3- Mostrar sueldo de un empleado.");
        printf("\n4- Mostrar empleados para una categoria.");
        printf("\n5- Mostrar cantidad de empleados por categoria.");
        printf("\n6- Salir.\n\n");
        scanf("%d", &opcion);
        printf("\n");

        if(opcion != 6)
        {
            switch(opcion)
            {
                case 1: 
                    //Cargar empleados
                    cargarEmpleados();
                    bandera=1;
                    break;
                case 2: 
                    //Mostrar empleados
                    if (bandera == 0)
                    {
                        printf("ERROR: Primero debe cargar los empleados \n");
                    }
                    else
                    {
                        mostrarEmpleados();
                    }
                    break;
                case 3: 
                    //Mostrar sueldo de un empleado
                    if (bandera == 0)
                    {
                        printf("ERROR: Primero debe cargar los empleados \n");
                    }
                    else
                    {
                        calcularYMostrarSueldoEmpleado();
                    }
                    break;
                case 4:
                    //Mostrar empleados para una categoría
                    if (bandera == 0)
                    {
                        printf("ERROR: Primero debe cargar los empleados \n");
                    }
                    else
                    {
                        mostrarEmpleadosParaUnaCategoria();
                    }
                    break;
                case 5:
                    //Mostrar cantidad de empleados por categoría
                    if (bandera == 0)
                    {
                        printf("ERROR: Primero debe cargar los empleados \n");
                    }
                    else
                    {
                        mostrarEmpleadosPorCategoria();
                    }
                    break;
                default:
                    printf("La opci%cn ingresada es inv%clida\n", 162, 160);
            }  
        }

    } while (opcion != 6);
}

void cargarEmpleados()
{
    for(int i = 0; i < tam; i++)
    {
        dnis[i]=validardni();
        
        printf("\n");  
        
        printf("Ingrese el nombre del empleado: ");
        scanf("%s", &nombres[i]);

        printf("\n");

        do
        {
            printf("Ingrese la cantidad de horas trabajadas: ");
            scanf("%d", &horasTrabajadas[i]);

            if (horasTrabajadas[i]<1)
            {
                printf("Ingrese una cantidad de horas v%clida\n", 160);
            }
            
        } while (horasTrabajadas[i]<1);
        
        printf("\n");

        do
        {
            printf("Ingrese la categoria: ");
            printf("\n1- Planta");
            printf("\n2- Administrativo");
            printf("\n3- Vendedor\n");
            scanf("%i", &categorias[i]);

            if (categorias[i]!=1 && categorias[i]!=2 && categorias[i]!=3)
            {
                printf("Ingrese una categor%ca v%clida\n", 161, 160);
            }

        } while (categorias[i]!=1 && categorias[i]!=2 && categorias[i]!=3);
        
        printf("\n");
    }
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

    nroDNI=validardni();

    for(int i = 0; i < tam; i++)
    {
        if (nroDNI==dnis[i])
        {
            printf(" %d \t", dnis[i]);
            printf(" %s \t", nombres[i]);
            printf(" %d hs \t", horasTrabajadas[i]);
            switch(categorias[i])
            {
                case 1:
                    printf("Planta");
                    sueldo=horasTrabajadas[i]*precioHoraPlanta;
                    break;
                case 2:
                    printf("Administrativo");
                    sueldo=horasTrabajadas[i]*precioHoraAdministrativo;
                    break;
                case 3:
                    printf("Vendedor");
                    sueldo=horasTrabajadas[i]*precioHoraVendedor;
                    break;
                default:
                    printf("Categoria inv%clida\n", 160);
            }
            printf("\nSu sueldo es de $%i \n", sueldo);
            encontrado = 1;
        }
    }

    if (encontrado == 0)
    {
        printf("DNI inexistente \n");
    }
}

void mostrarEmpleadosParaUnaCategoria()
{
    int cat;
    do
    {
        printf("Categoria a buscar: ");
        printf("\n1- Planta");
        printf("\n2- Administrativo");
        printf("\n3- Vendedor");
        printf("\n");
        scanf("%i", &cat);

        if (cat!=1 && cat!=2 && cat!=3)
        {
            printf("Ingrese una categor%ca v%clida\n", 161, 160);
        }
    } while (cat!=1 && cat!=2 && cat!=3);

    for(int i = 0; i < tam; i++)
    {
        if (categorias[i]==cat)
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
}

int validardni()
{
    int dni;
    do
    {   
        printf("Nro. de DNI del empleado: ");
        scanf("%d", &dni); 

        if (dni> 99999999 || dni < 1000000)
        {
            printf("Ingrese un DNI v%clido\n", 160);
        }
            
    } while (dni> 99999999 || dni < 1000000);

    return dni;
}

void mostrarEmpleadosPorCategoria()
{
    int cantidad[3];

    cantidad[0]=0;
    cantidad[1]=0;
    cantidad[2]=0;
    
    for(int i = 0; i < tam; i++)
    {
        switch(categorias[i])
        {
            case 1:
                cantidad[0]=cantidad[0]+1;
                break;
            case 2:
                cantidad[1]=cantidad[1]+1;
                break;
            case 3:
                cantidad[2]=cantidad[2]+1;
                break;
        }
    }

    printf("Cantidad de empleados de Planta: %i \n",cantidad[0]);
    printf("Cantidad de empleados de Planta: %i \n",cantidad[1]);
    printf("Cantidad de empleados de Planta: %i \n",cantidad[2]);
}
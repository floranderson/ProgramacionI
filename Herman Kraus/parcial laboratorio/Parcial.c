#include <stdio.h>

int dnis[130];
char nombres[130][50];
int horasTrabajadas[130];
int categorias[130];

int precioHoraPlanta = 2000;
int precioHoraAdministrativo = 1500;
int precioHoraVendedor = 1000;

int contador1=0;
int contador2=0;
int contador3=0;
int bandera =0;

const int tam = 130;

void cargarEmpleados();
void mostrarEmpleados();
void calcularYMostrarSueldoEmpleado();
void mostrarEmpleadosParaUnaCategoria(int cat);
void cantidadPorCategoria();

void main()
{
    int opcion = 0;
    int cat = 0; 

    do
    {
        printf("\n1- Cargar empleados.");
        printf("\n2- Mostrar empleados.");
        printf("\n3- Mostrar sueldo de un empleado.");
        printf("\n4- Mostrar empleados para una categor%ca.", 161);
        printf("\n5- Mostrar empleados por categor%ca.", 161);
        printf("\n6- Salir.\n\n");
        scanf("%d", &opcion);

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
                    if (bandera==0)
                    {
                        printf("Se deben cargar los empleados.\n");
                    }
                    else
                    {
                        mostrarEmpleados();
                    }
                    break;
                case 3: 
                    //Mostrar sueldo de un empleado
                    if (bandera==0)
                    {
                        printf("Se deben cargar los empleados.\n");
                    }
                    else
                    {
                        calcularYMostrarSueldoEmpleado();
                    }
                    break;
                case 4:
                    //Mostrar empleados para una categoría
                    if (bandera==0)
                    {
                        printf("Se deben cargar los empleados.\n");
                    }
                    else
                    {
                        printf("Categoria a buscar: ");
                        printf("\n1- Planta");
                        printf("\n2- Administrativo");
                        printf("\n3- Vendedor");
                        printf("\n");

                        do
                        {
                            scanf("%i", &cat);

                            if (cat<1 || cat>3)
                            {
                                printf("Opcion inv%clida. Ingrese nuevamente.\n", 162, 160);
                            }
                        
            
                        } while (cat<0 || cat>3);

                        mostrarEmpleadosParaUnaCategoria(cat);
                    }
                    break;
                case 5:
                    if (bandera==0)
                    {
                        printf("Se deben cargar los empleados.\n");
                    }
                    else
                    {
                        cantidadPorCategoria();
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

        printf("Nro. de DNI del empleado: ");
        
        do
        {
            scanf("%d", &dnis[i]); 

            if (dnis[i]<1000000 || dnis[i]>99999999)
            {
                printf("El DNI es inv%clido. Ingrese nuevamente\n", 160);
            } 

        } while (dnis[i]<1000000 || dnis[i]>99999999);

        
        printf("Ingrese el nombre: ");
        scanf("%s", &nombres[i]);

        printf("Ingrese la cantidad de horas trabajadas: ");

        do
        {
            scanf("%d", &horasTrabajadas[i]);

            if (horasTrabajadas[i]<=0)
            {
                printf("Cantidad de horas inv%clidas. Ingrese nuevamente.\n",160);
            }
            
        } while (horasTrabajadas[i]<=0);
        
        
        
        
        printf("Ingrese la categoria: ");
        printf("\n1- Planta");
        printf("\n2- Administrativo");
        printf("\n3- Vendedor");
        printf("\n");
    
        do
        {
            scanf("%i", &categorias[i]);

            if (categorias[i]<1 || categorias[i]>3)
            {
                printf("Opcion inv%clida. Ingrese nuevamente.\n", 162, 160);
            }
            
        } while (categorias[i]<0 || categorias[i]>3);
        
        if (categorias[i]==1)
        {
            contador1++;
        }
        if (categorias[i]==2)
        {
            contador2++;
        }
        if (categorias[i]==3)
        {
            contador3++;
        }
        
        
        
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

        printf("Nro. de DNI del empleado: ");
        
        do
        {
            scanf("%d", &nroDNI); 

            if (nroDNI<1000000 || nroDNI>99999999)
            {
                printf("DNI inexistente\n", 160);
            } 

        } while (nroDNI<1000000 || nroDNI>99999999);
    
    for (int i = 0; i < tam ; i++)
    {
        if (nroDNI==dnis[i])
        {
            encontrado=1;
            printf("Nombre: %s \n", nombres[i]);
            printf("Horas trabajadas: %d \n", horasTrabajadas[i]);

            switch(categorias[i])
            {
                case 1:

                    sueldo=horasTrabajadas[i]*precioHoraPlanta;

                    printf("Sueldo: %d \n", sueldo);
                    break;

                case 2:

                    sueldo=horasTrabajadas[i]*precioHoraAdministrativo;

                    printf("Sueldo: %d \n", sueldo);
                    break;
                case 3:

                    sueldo=horasTrabajadas[i]*precioHoraVendedor;
                    
                    printf("Sueldo: %d \n", sueldo);
                    break;
                default:
                    break;
            }
        }
        
    }
    


}

void mostrarEmpleadosParaUnaCategoria(int cat)
{
        for (int i = 0; i < tam; i++)
        {
            if (cat==categorias[i])
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
                    break;
                }
        printf("\n");
                }
            
        }
        
}

void cantidadPorCategoria()
{

printf("La cantidad de empleados en planta son: %i\n", contador1);
printf("La cantidad de empleados administrativos son: %i\n", contador2);
printf("La cantidad de empleados vendedores son: %i\n", contador3);

}
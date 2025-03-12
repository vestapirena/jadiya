package com.fatima;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main(String[] args) 
    {
        System.out.println("Hola, este es un JAR ejecutable.");
        if (args.length > 0) {
            System.out.println("Argumento recibido: " + args[0]);
        }
    }
}

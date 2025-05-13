package com.mavenproject;

import java.util.Scanner;

public class App {
    private static int counter = 0;

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean running = true;

        while (running) {
            System.out.println("\nCounter Application");
            System.out.println("Current count: " + counter);
            System.out.println("1. Increment");
            System.out.println("2. Decrement");
            System.out.println("3. Reset");
            System.out.println("4. Exit");
            System.out.print("Choose an option (1-4): ");

            int choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    increment();
                    break;
                case 2:
                    decrement();
                    break;
                case 3:
                    reset();
                    break;
                case 4:
                    running = false;
                    break;
                default:
                    System.out.println("Invalid option! Please try again.");
            }
        }
        scanner.close();
        System.out.println("Thank you for using the Counter App!");
    }

    private static void increment() {
        counter++;
        System.out.println("Counter incremented!");
    }

    private static void decrement() {
        counter--;
        System.out.println("Counter decremented!");
    }

    private static void reset() {
        counter = 0;
        System.out.println("Counter reset to zero!");
    }
}

using static System.Console;
using fibgen.services;

namespace fibgen.consoleApp
{
    public class Program
    {
        public static void Main(string[] args)
          {
            WriteLine("Hello World!");
            WriteLine("Fibonacci Numbers 1-15:");

            for (int i = 0; i < 15; i++)
            {
                WriteLine($"{i+1}: {fibgenservice.FibonacciNumber(i)}");
            }
        }
    }
}

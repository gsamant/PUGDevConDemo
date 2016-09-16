using Xunit;
using fibgen.services;

namespace fibgen.UnitTests.Services
{
    public class fibgenservice_IsCorrect
    {
        [Fact]
        public void CheckResultfor3() 
        {
            var result = fibgenservice.FibonacciNumber(3);
            Assert.True(result == 2);
        }
    }
}

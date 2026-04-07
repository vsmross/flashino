using Amazon.Lambda.APIGatewayEvents;
using Amazon.Lambda.Core;
using System.Net.Http.Headers;

[assembly: LambdaSerializer(typeof(Amazon.Lambda.Serialization.SystemTextJson.DefaultLambdaJsonSerializer))]

namespace HotelMan_HotelAdmin
{
    public class HotelAdmin
    {
        public APIGatewayProxyResponse AddHotel(APIGatewayProxyRequest request, ILambdaContext context)
        {

            //HotelMan_HotelAdmin::HotelMan_HotelAdmin::HotelAdmin::AddHotel

            var response = new APIGatewayProxyResponse()
            {
                 Headers = new Dictionary<string, string>(),
                 Body =
                 StatusCode = 200
            };

            response.Headers.Add("Access-Control-Allow-Origin", "*");
            response.Headers.Add("Access-Control-Allow-Headers", "*");
            response.Headers.Add("Access-Control-Allow-Methods", "OPTIONS,POST");

            Console.WriteLine("OK..");

            return response;
        }
    }

    public class Hotel
    {
        public string? Name { get; set; }
        public int ID { get; set; }
        public string? Location { get; set; }
    }
}

///<reference path="utils.ts" />
var logger = console;
logger.log('Test method!');
logger = new EnableDecorator(console, true);
logger.log('Test method!');
logger = new EnableDecorator(console, false);
logger.log('Test method!');
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9pbmRleC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQSxnQ0FBZ0M7QUFFaEMsSUFBSSxNQUFNLEdBQWEsT0FBTyxDQUFDO0FBQy9CLE1BQU0sQ0FBQyxHQUFHLENBQUMsY0FBYyxDQUFDLENBQUM7QUFFM0IsTUFBTSxHQUFHLElBQUksZUFBZSxDQUFDLE9BQU8sRUFBRSxJQUFJLENBQUMsQ0FBQztBQUM1QyxNQUFNLENBQUMsR0FBRyxDQUFDLGNBQWMsQ0FBQyxDQUFDO0FBRTNCLE1BQU0sR0FBRyxJQUFJLGVBQWUsQ0FBQyxPQUFPLEVBQUUsS0FBSyxDQUFDLENBQUM7QUFDN0MsTUFBTSxDQUFDLEdBQUcsQ0FBQyxjQUFjLENBQUMsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8vLzxyZWZlcmVuY2UgcGF0aD1cInV0aWxzLnRzXCIgLz5cclxuXHJcbnZhciBsb2dnZXIgOiBJTG9nZ2VyID0gY29uc29sZTtcclxubG9nZ2VyLmxvZygnVGVzdCBtZXRob2QhJyk7XHJcblxyXG5sb2dnZXIgPSBuZXcgRW5hYmxlRGVjb3JhdG9yKGNvbnNvbGUsIHRydWUpO1xyXG5sb2dnZXIubG9nKCdUZXN0IG1ldGhvZCEnKTtcclxuXHJcbmxvZ2dlciA9IG5ldyBFbmFibGVEZWNvcmF0b3IoY29uc29sZSwgZmFsc2UpO1xyXG5sb2dnZXIubG9nKCdUZXN0IG1ldGhvZCEnKTsiXX0=
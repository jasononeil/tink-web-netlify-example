import tink.http.containers.AwsLambdaNodeContainer;
import tink.web.routing.Router;
import tink.web.routing.Context;
import tink.http.Response.OutgoingResponse;
import tink.http.Handler;

class NetlifyFunction {
	@:expose('handler')
	static function handler(event, context, callback) {
		// var container = new AwsLambdaNodeContainer(event, context, callback);
		// var router = new Router<Root>(new Root());
		// var handler:Handler = req -> router.route(Context.ofRequest(req)).recover(OutgoingResponse.reportError);
		// container.run(handler).eager();
		callback(null, {
			statusCode: 200,
			body: 'does this work?'
		});
	}
}

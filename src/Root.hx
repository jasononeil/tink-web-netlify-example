class Root {
	public function new() {}

	@:get('/')
	public function home() {
		return 'This is my homepage!';
	}

	@:get('/$topic')
	public function showTopic(topic:String) {
		return 'I don\'t know much about $topic';
	}
}

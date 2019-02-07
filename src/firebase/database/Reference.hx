package firebase.database;

import js.Promise;

@:native('admin.database.Reference')
extern class Reference extends Query {
	public var key:String;
	public var parent:Reference;
	public var root:Reference;
	public function child (path:String):Reference;
	public function push (?value:Dynamic, ?onComplete:Dynamic -> Void):ThenableReference;
	public function set (value:Dynamic, ?onComplete:Dynamic -> Void):Promise<Void>;
	public function transaction (transactionUpdate:Dynamic -> Void, ?onComplete:Dynamic -> Bool -> DataSnapshot -> Void,
		?applyLocally:Bool):Promise<{committed:Bool, snapshot:Null<DataSnapshot>}>;
	public function remove (?onComplete:Dynamic -> Void):Promise<Void>;
	public function update (?value:Dynamic, ?onComplete:Dynamic -> Void):Promise<Void>;
}

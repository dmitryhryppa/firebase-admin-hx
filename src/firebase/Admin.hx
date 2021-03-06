package firebase;

import firebase.storage.Storage;
import firebase.admin.App;

@:native('admin')
@:jsRequire('firebase-admin')
extern class Admin {
	public static var SDK_VERSION:String;
	public static var apps:Array<App>;
	public static function initializeApp(options:AppOptions):Void;
	public static function app(?name:String):App;
	public static function storage():Storage;
}

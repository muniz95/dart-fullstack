import 'package:grinder/grinder.dart';

main(args) => grind(args);

@Task()
test() {
	new TestRunner().testAsync(runOptions: RunOptions(workingDirectory: './frontend'));
}

@Task()
serve() {
	return Pub.run('aqueduct', arguments: ['serve'], runOptions: RunOptions(workingDirectory: './backend', runInShell: true));
	// Pub.run('webdev', arguments: ['serve', '-v'], workingDirectory: './frontend');
}

@DefaultTask()
@Depends(test)
build() {
  Pub.build();
}

@Task()
clean() => defaultClean();

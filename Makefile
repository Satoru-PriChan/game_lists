.PHONY: run
run:
	dart pub run build_runner build
	flutter run --dart-define-from-file=.env
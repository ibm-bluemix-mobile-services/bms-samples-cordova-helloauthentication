all:
	make clean && make add && make build_ios && make build_droid
all_ios_build:
	make clean && make add && make build_ios
all_droid_build:
	make clean && make add && make build_droid
all_ios_run:
	make clean && make add && make run_ios
all_droid_run:
	make clean && make add && make run_droid
list:
	cordova plugin list
add:
	make add-remote
	#make add-local
add-remote:
	cordova plugin add ibm-mfp-core
	#cordova plugin add ibm-mfp-push
add-local:

clean:
	#cordova plugin remove ibm-mfp-push
	cordova plugin remove ibm-mfp-core
pf_ios:
	cordova platform add ios
pf_droid:
	cordova platform add android
remove_pf_ios:
	cordova platform add ios
remove_pf_droid:
	cordova platform add android
build_droid:
	cordova build android
build_ios:
	cordova build ios
build: 
	make build_droid
	make build_ios
run_droid:
	cordova run android
run_ios:
	cordova run ios

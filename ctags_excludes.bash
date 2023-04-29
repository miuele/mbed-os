{
	EXCL="TARGET_STM/TARGET_STM32F3/TARGET_STM32F303x8/TARGET_NUCLEO_F303K8"
	BASE=targets
	for CMPN in $( IFS=/ ; for X in "$EXCL" ; do echo $X ; done ) ; do
		find "$BASE" -mindepth 1 -maxdepth 1 -name "TARGET_*" ! -name "$CMPN"
		BASE="$BASE/$CMPN"
	done
} > ctags_excludes

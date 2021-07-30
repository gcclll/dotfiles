#! #!/usr/bin/env bash
set -euo pipefail

lib_cp_to_blog() {
    PKG_NAME="$1"
    var_name="$2"
    append="$3"
    FILE_CC="$VUE_BLOG_JS/$PKG_NAME.global.js"
    FILE_SRC="$VUE_PKG_PATH/$PKG_NAME/dist/$PKG_NAME.global.js"
    echo "$FILE_SRC -> $FILE_CC"
    if [ $3 = "cjs" ]; then
        append="append"
        FILE_CC="$VUE_BLOG_JS/$PKG_NAME.cjs.js"
        FILE_SRC="$VUE_PKG_PATH/$PKG_NAME/dist/$PKG_NAME.cjs.js"
    fi

    cp $FILE_SRC $FILE_CC

    if [ $append = "append" ]; then
        lib_add_module_exports "$var_name" $FILE_CC
    elif [ $append = "appendesm" ]; then
        lib_add_module_esm "$var_name" $FILE_CC
    fi
}

lib_add_module_exports() {
    echo "
try {
  if (module) {
    module.exports = $1;
  }
} catch (e) {}
 " >>$2
}

lib_add_module_esm() {
    echo "export default $1" >>$2
}

lib_capitalize() {
    STR=$1
    arr=($(echo $STR | tr '-' ' '))
    res=""
    for var in ${arr[@]}; do
        fls=$(echo ${var:0:1} | awk '{print toupper($0)}')
        ols=${var:1}
        res=$res$fls$ols
    done

    echo $res
}

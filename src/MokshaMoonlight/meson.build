edc_file = 'MokshaMoonlight.edc'

e_theme_image_include = join_paths(meson.current_source_dir(), 'img')
e_theme_emo_include = join_paths(meson.current_source_dir(), 'emo')

e_theme = custom_target('MokshaMoonlight.edj',
  input : edc_file,
  depfile: '@BASENAME@.edj.d',
  output : '@BASENAME@.edj',
  command : [ edje_cmd, '-fastdecomp',
            '-deps', '@DEPFILE@',
            '-id', e_theme_image_include,
            '-id', e_theme_emo_include,
            '@INPUT@', '@OUTPUT@'],
  build_by_default : true,
  install : false,
 )

##### set name of edj file
edj_name = get_option('edje-name')
if edj_name == ''
  edj_name = 'MokshaMoonlight'
endif

##### install elm
elm = get_option('elm')

edj = get_option('edj')
if edj == true

  meson.add_install_script('../../meson/install_edj.sh',
                          dir_data, edj_name, elm.to_string(), elm_dir_th)
else
  if elm == true
    message('Warning: Elm theme will not be installed.')
    message('         To install edj must be enabled.')
  endif
endif

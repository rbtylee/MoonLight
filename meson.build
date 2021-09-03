project('MokshaMoonlight',
  version: '1.25.99',
  default_options : ['buildtype=plain'],
  meson_version : '>=0.49'
)

pkgconfig = import('pkgconfig')
edje_depends             = dependency('edje'            , required: true)
efl_depends              = dependency('efl'             , required: true)
e_depends                = dependency('enlightenment'   , required: true)

##### install paths
dir_prefix    = e_depends.get_pkgconfig_variable('prefix')
dir_data      = join_paths(dir_prefix, 'share', 'enlightenment', 'data', 'themes')
dir_prefix    = efl_depends.get_pkgconfig_variable('prefix')
elm_dir_th    = join_paths(dir_prefix, 'share', 'elementary', 'themes')

##### edje_cc binary compiler tool
edje_cmd = get_option('edje-cc')
if edje_cmd == ''
  edje_cmd = join_paths(edje_depends.get_pkgconfig_variable('prefix'),
                        'bin', 'edje_cc')
endif

##### Name of Icon Folder
icon_dir = get_option('icon-dir')
if icon_dir == 'bl6'
  icon_th='Icons-Moksha-Moonlight'
else
  icon_th='MokshaMoonlight'
endif

##### Name of GTK Folder
gtk_dir = get_option('gtk-dir')
if gtk_dir == 'bl6'
  gtk_th='Moonlight-GTK'
else
  gtk_th='MokshaMoonlight'
endif

subdir('src/MokshaMoonlight')

icon = get_option('icons')
if icon == true
  meson.add_install_script('meson/install_icons.sh', icon_th)
endif

gtk = get_option('gtk')
if gtk == true
  meson.add_install_script('meson/install_gtk.sh', gtk_th)
endif

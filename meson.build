project('MokshaMoonlight',
  version: '0.11.0',
  meson_version : '>=1.3.0'
)

efl_depends = dependency('efl', required: true)
e_depends   = dependency('enlightenment', required: true)

##### install paths
dir_prefix    = e_depends.get_variable('prefix')
dir_data      = join_paths(dir_prefix, 'share', 'enlightenment', 'data', 'themes')
dir_prefix    = efl_depends.get_variable('prefix')
elm_dir_th    = join_paths(dir_prefix, 'share', 'elementary', 'themes')

subdir('src/MokshaMoonlight')
subdir('icons')
subdir('gtk')

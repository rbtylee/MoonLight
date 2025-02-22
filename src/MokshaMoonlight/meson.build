##### edje_cc binary compiler tool ###
edje_cc = get_option('edje-cc')
if edje_cc == ''
   edje_cc = find_program('edje_cc')
endif

cmd = [ edje_cc, '-fastdecomp',
        '-id', join_paths(meson.current_source_dir(), 'img'),
        '-id', join_paths(meson.current_source_dir(), 'emo'),
        '@INPUT@', '@OUTPUT@']

e_theme = custom_target('MokshaMoonlight.edj',
                        input : 'MokshaMoonlight.edc',
                        output : 'MokshaMoonlight.edj',
                        command : cmd,
                        install_dir: dir_data,
                        install : true
                       )

install_symlink('MokshaMoonlight.edj',
                install_dir: elm_dir_th,
                pointing_to: join_paths(dir_data, 'MokshaMoonlight.edj'), 
               )

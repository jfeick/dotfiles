let g:promptline_preset = {
        \'a' : [ promptline#slices#host() ],
        \'b' : [ '$USER'],
        \'c' : [ promptline#slices#cwd({ 'dir_limit': 2 }) ],
        \'y' : [ promptline#slices#vcs_branch() ],
        \'z' : [ promptline#slices#python_virtualenv() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}

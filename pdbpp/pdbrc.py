import pdb


class Config(pdb.DefaultConfig):
    highlight = True
    sticky_by_default = True
    use_pygments = True
    editor = '${EDITOR:-vim}'
    truncate_long_lines = False

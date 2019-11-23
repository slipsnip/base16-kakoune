from pathlib import Path
from collections import namedtuple
from contextlib import suppress
from string import Template
import json


SOURCE = ('base16.json')
FACE_SPEC = ('faces.json')
DEST = ('colors')
FILENAME = Template('base16-${scheme}.kak')

def build_scheme(scheme_name, scheme_title, colors, author, site):
    face_spec = Path(FACE_SPEC)
    with face_spec.open() as face_spec_fd:
        face_specs = json.load(face_spec_fd)
    dest_directory = Path(DEST)
    if not dest_directory.is_dir():
        dest_directory.mkdir()
    filename = dest_directory / FILENAME.substitute(scheme=scheme_name)
    header = f'##\n## {scheme_title}\n## {author} @ {site}\n##\n\n' 
    with filename.open('w+') as scheme_file:
        scheme_file.write(header)
        scheme_file.write('evaluate-commands %sh{\n')
        variables = map(lambda color_str: '\t' + color_str + '\n', colors)
        scheme_file.writelines(variables)
        scheme_file.write('\n\n')
        for group_name, faces in face_specs.items():
            scheme_file.write(f'## {group_name}\n')
            scheme_file.write('\techo "\n')
            for face in faces:
                scheme_file.write(f'\t\tface global {face} {faces[face]}\n')
            scheme_file.write('\n"\n\n')
        scheme_file.write('}')


def main():
    src = Path(SOURCE)
    color_schemes = json.loads(src.read_text())

    for scheme_name, scheme in color_schemes.items():
        author = scheme['author']
        author, *link = author.partition('(')
        link = ''.join(link)
        author = author.strip().title()
        scheme_title = scheme['scheme'].title()
        colors = [f'{key}=\'rgb:{scheme[key].lstrip("#").upper()}\'' for key in list(scheme)[2:]]
        build_scheme(scheme_name, scheme_title, colors, author, link)
                    


if __name__ == '__main__':
    main()
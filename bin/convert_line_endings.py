import os

filenames = os.listdir('.')

for filename in filenames:
    if filename.endswith('rst'):
        print('converting line endings of: {}'.format(filename))

        with open(filename, 'r+') as f:
            text_original = f.read()
            text_converted = text_original.replace('\r','')
            f.seek(0)
            f.truncate(0)
            f.write(text_converted)
            len_original = len(text_original)
            len_converted = len(text_converted)
            print('({}) {}->{}'.format(len_converted - len_original, len_original, len_converted))

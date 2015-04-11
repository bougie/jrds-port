# generate makefile extra_dist variables for fetching depends
import re
import sys
from collections import OrderedDict


def get_dist_name(filename):
    try:
        dist = re.compile('(-[0-9])').split('-'.join(filename))[0]
    except:
        dist = ''.join(filename[:len(filename) - 1])
    finally:
        for c in ['.', '-']:
            dist = dist.replace(c, '')
        return dist


def get_suffix(filename):
    try:
        suffix = ''.join(re.compile('(-[0-9])').split('-'.join(filename))[1:])
    except:
        suffix = filename[-1]
    finally:
        if not suffix.startswith('-'):
            suffix = '-' + suffix
        return suffix


def parse_lines(lines):
    libs = {}

    for line in lines:
        if len(line.strip()) == 0:
            continue

        items = line.split('/')
        filename = items[-1].split('-')

        dist = get_dist_name(filename[:len(filename) - 1])
        suffix = get_suffix(filename)
        # realname = '-'.join(filename[:len(filename) - 1])
        realname = '-'.join(filename).replace(suffix, '')

        libs[dist] = OrderedDict()
        if realname != dist:
            libs[dist]['realname'] = realname
        libs[dist]['suffix'] = suffix
        libs[dist]['subdir'] = '/'.join(items[4:len(items) - 1])

    _libs = OrderedDict()
    for k in sorted(libs.keys()):
        _libs[k] = libs[k]
    return _libs

if __name__ == "__main__":
    try:
        with open('packages_jrds.txt', 'r') as f:
            lines = f.read().split('\n')
    except:
        sys.exit(1)
    else:
        libs = parse_lines(lines)
        nb_cols = max([len(k) for k in libs.keys()])

        print("EXTRA_DIST= %s\n" % (' '.join(sorted(libs.keys())),))
        for dist, items in libs.items():
            for item in items:
                s = nb_cols - len(dist + "_" + item.upper())
                if s > 20:
                    s = 20
                spaces = ' '
                if s > 0:
                    for x in range(s):
                        spaces += ' '

                print("%s_%s=%s%s" % (dist, item.upper(), spaces, items[item]))
            print("")

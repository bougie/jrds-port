# generate makefile extra_dist variables for fetching depends

import sys


if __name__ == "__main__":
    try:
        with open('packages_jrds.txt', 'r') as f:
            lines = f.read().split('\n')
    except:
        sys.exit(1)
    else:
        extra_dist = []
        for line in lines:
            if len(line.strip()) == 0:
                continue

            items = line.split('/')
            filename = items[-1].split('-')

            dist = ''.join(filename[:len(filename) - 1]).replace('.', '')
            suffix = filename[-1]
            subdir = '/'.join(items[4:len(items) - 1])
            realname = '-'.join(filename[:len(filename) - 1])

            print("\n%s_SUFFIX=   -%s" % (dist, suffix))
            print("%s_SUBDIR=   %s" % (dist, subdir))
            print("%s_REALNAME= %s" % (dist, realname))

            extra_dist.append(dist)

        print("\nEXTRA_DIST= %s" % (' '.join(extra_dist),))

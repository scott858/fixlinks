from contextlib import closing
import os
import time

remote_path_list = ['/usr', '/etc']
remote_path_list_maybes = ['/var', '/lib']
rootfs = '/opt/b2qt/2.0.1/sysroots/odroid-c2-mate'
rootfs = '/opt/sysroots/odroid-c2-archlinux'
rootfs = '/opt/sysroots/odroid-xu4-mate'
# rootfs = '/media/scott/rootfs'
remote_path = '/usr'

relative_path_depth = remote_path.count('/')
relativizer = ''
for level in range(relative_path_depth):
    relativizer += '../'
rootfs_lib = rootfs + remote_path
os.chdir(rootfs_lib)
time_now = time.time()
with closing(open('links_file-{}.txt'.format(time_now), 'w')) as links_file:
    files = os.listdir('.')
    for subdir, dirs, files in os.walk(rootfs_lib):
        remote_path = subdir.replace(rootfs, '')
        relative_path_depth = remote_path.count('/')
        relativizer = ''
        for level in range(relative_path_depth):
            relativizer += '../'
        rootfs_lib = rootfs + remote_path
        os.chdir(subdir)
        for link in files:
            try:
                file_path = os.readlink(subdir + '/' + link)
                if file_path.startswith('/'):
                    links_file.write(link + '\n')
                    print('file {0} points to {1}'.format(link, file_path))
                    file = file_path.replace(rootfs, '')
                    file = list(file)
                    file[0] = relativizer
                    file = "".join(file)
                    print('it will point to {}'.format(file))
                    try:
                        os.remove(subdir + '/' + link)
                        os.symlink(file, link)
                    except Exception as e:
                        print(e)
            except Exception as e:
                pass

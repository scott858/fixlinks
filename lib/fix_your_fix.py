import os

rootfs = '/opt/b2qt/2.0.1/sysroots/odroid-xu3-mate'
remote_path = '/usr/lib/arm-linux-gnueabihf/'
rootfs_lib = rootfs + remote_path
os.chdir(rootfs_lib)
links_file = open('links_file.txt', 'r')

files = links_file.readlines()
link_list = []
relative_path_list = []
for file in files:
    try:
        print('file {0}'.format(file))
        if rootfs in file:
            link = file.replace(rootfs, '')
            link = link.replace(remote_path, '')
            link = list(link)
            link = link[:-1]
            link = "".join(link)
            link_list.append(link)
        else:
            relative_path = list(file)
            relative_path[0] = '../../../'
            relative_path = relative_path[:-1]
            relative_path = "".join(relative_path)
            relative_path_list.append(relative_path)
    except Exception as e:
        print(e)
try:
    for link in link_list:
        try:
            os.remove(link)
        except Exception as e:
            print(e)
        for relative_path in relative_path_list:
            if link in relative_path:
                os.symlink(relative_path, link)
except Exception as e:
    print(e)

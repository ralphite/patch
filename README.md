# patch.sh

---

find and replace patch files automatically


```sh
$ patch.sh test/orig/ test/dest/

To replace:

mv test/dest/a.txt test/dest/a.txt_backup
mv test/orig/a.txt test/dest/a.txt
mv test/dest/b/c/c.txt test/dest/b/c/c.txt_backup
mv test/orig/c.txt test/dest/b/c/c.txt test/dest/b/c.txt
mv test/dest/b/c.txt test/dest/b/c.txt_backup
mv test/orig/c.txt test/dest/b/c/c.txt test/dest/b/c.txt
mv test/dest/b/e.txt test/dest/b/e.txt_backup
mv test/orig/e.txt test/dest/b/e.txt
mv test/dest/b/b.txt test/dest/b/b.txt_backup
mv test/orig/new/b.txt test/dest/b/b.txt

To rollback:

mv test/dest/a.txt_backup test/dest/a.txt
mv test/dest/b/c/c.txt_backup test/dest/b/c/c.txt
mv test/dest/b/c.txt_backup test/dest/b/c.txt
mv test/dest/b/e.txt_backup test/dest/b/e.txt
mv test/dest/b/b.txt_backup test/dest/b/b.txt
```
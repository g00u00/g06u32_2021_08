cp -rpf ../cgi-bin  ../cgi-bin_files
echo ""
ls -laFtr ../cgi-bin_files/cgi-bin
rm ../.i/g06u32.bz2
tar -cjf  ../.i/g06u32.bz2 ../.bash_history ../.bashrc ../.htaccess ../.viminfo ../.vimrc ../cgi-bin  ../cgi-bin_files ../css ../img ../public_html ../js
cd ../.i
ls -lAFtr
echo ""
echo "!!! g06 e.. binary  put g06u32.bz2   rename !!!"
echo ""
ftp ftp.drivehq.com

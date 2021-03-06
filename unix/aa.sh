#####install homebrew
# https://zhuanlan.zhihu.com/p/111014448
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew -v
brew update
brew ls
brew leaves
brew search Name
brew uninstall packageName
brew info packageName

#####ssd status
#https://www.macworld.com/article/3609512/how-to-m1-intel-mac-ssd-health-terminal-smartmontools.html
brew install smartmontools
sudo smartctl --all /dev/disk0

#####calculator
#http://www.isthe.com/chongo/tech/comp/calc/calc-whatis.html
brew install calc
calc
3 * 19^43 - 1
. % (2^127-1)
curds = 15
whey = 7 + 2*curds
(2+3i) * (4-3i)
cos(.)
help
help builtin
quit



#####htop
#https://htop.dev
brew install htop



#####git
#https://blog.csdn.net/Zhiyuan_Ma/article/details/54613773
#https://blog.csdn.net/qq_38658877/article/details/97612820
#https://blog.csdn.net/shuqianwin/article/details/51143517
#https://blog.csdn.net/weixin_34044273/article/details/93013981
brew install git



#####sqlite
#https://www.runoob.com/sqlite/
brew install sqlite



#####iterm2
#https://zhuanlan.zhihu.com/p/94114383
brew install --cask iterm2
#ohmyzsh
#https://zhuanlan.zhihu.com/p/35283688
#https://zhuanlan.zhihu.com/p/145437836
#https://blog.csdn.net/gangyin5071/article/details/79601132
#https://medium.com/@sumitmenon/how-to-get-anaconda-to-work-with-oh-my-zsh-on-mac-os-x-7c1c7247d896
#https://blog.csdn.net/qq_36838191/article/details/89208467
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

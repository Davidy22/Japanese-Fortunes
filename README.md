![Banner](banner.png)
Fortunes for use with the fortune program, a unix tool for displaying a random message.

```
$ fortune
藤原興風
百人一首三十四
誰をかも
知る人にせむ
高砂の

松もむかしの
友ならなくに
```

The anthologies contained:
- [Ogura Hyakunin Isshu (小倉百人一首)](https://en.wikipedia.org/wiki/Ogura_Hyakunin_Isshu), 100 items
- [Man'yōshū (万葉集)](https://en.wikipedia.org/wiki/Man%27y%C5%8Dsh%C5%AB), 4516 items

All texts courtesy of the [University of Virginia library.](http://jti.lib.virginia.edu/)

## Install

First you need fortune or a fortune equivalent installed.

Debian/Ubuntu

```sudo apt-get install fortune```

OSX

```brew install fortune```

Install the fortunes by running:

```git clone https://github.com/Davidy22/Japanese-Fortunes.git
cd Japanese-Fortunes
chmod +xX INSTALL.sh
sudo ./INSTALL.sh
```

## Usage
`fortune` will display any fortune on your computer, including any you may already have installed. `fortune -f` will give the ratio and odds, of an item from each source being selected. If you don't have any other fortunes installed, you should see:
```$ fortune -f
2.17% /usr/share/games/fortunes/hyakunin
97.83% /usr/share/games/fortunes/manyoshu
```
Files with more fortunes are more likely to get selected. If you want all files to have equal selection odds, use `fortune -e`:
```$ fortune -f -e
50.00% /usr/share/games/fortunes/hyakunin
50.00% /usr/share/games/fortunes/manyoshu
```

## Terminal greetings
You can use some extra tools to frame the fortune for a pretty terminal greeting. You can install them with:

Debian/Ubuntu

```sudo apt-get install par boxes```

OSX

```brew install par boxes```

And then add the following line to your .bashrc/.zshrc/other terminal startup file:

```fortune | par -w 150 -d -t | boxes -d scroll-akn | boxes -s $COLUMNS -c x -a hc -i none | cut -c 2-```

Which will make something like this greet you at the top of the terminal when you open one up:
```
                                        /"\/\_..---------------._/\/"\
                                       (     _|| 藤原敏行朝臣　 ||_     )
                                        \_/\/ || 百人一首十八　 || \/\_/
                                              || 住の江の　　　 ||
                                              || 岸による波　　 ||
                                              || よるさへや　　 ||
                                              ||　　　　　　　  ||
                                              || 夢の通ひ路　　 ||
                                              || 人目よくらむ　 ||
                                        /"\/\_|----------------|_/\/"\
                                       (     _|                |_     )
                                        \_/\/ `----------------' \/\_/
```

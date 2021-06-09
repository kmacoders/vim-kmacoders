Cơ bản
------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| :e filename | Mở filename với editor |
| :w | Lưu file |
| :q | Thoát Vim |
| :q! | Thoát mà không lưu |
| :x | Viết vào file (nếu thay đổi đã được tạo) và thoát |
| :sav filename | Lưu file dưới tên (filename) |
| . | Lặp lại thao tác gần nhất ở Normal Mode |
| 5. | Lặp lại 5 lần thao tác gần nhất ở Normal Mode |

Moving File
-----------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| k hoặc mũi tên lên | Di chuyển lên trên 1 dòng |
| j hoặc mũi tên xuống | Di chuyển xuống dưới 1 dòng |
| h hoặc mũi tên sang trái | Di chuyển sang trái 1 ký tự |
| l hoặc mũi tên sang phải | Di chuyển sang phải 1 ký tự |
| e | Di chuyển đến cuối từ |
| b | Di chuyển đến đầu từ (lùi lại) |
| w | Di chuyển đến đầu từ (tiến lên) |
| O | Di chuyển đến đầu dòng |
| G | Di chuyển đến cuối file |
| gg | Di chuyển đến đầu file |
| L | Di chuyển đến cuối screen |
| :59 hoặc 59G | Di chuyển đến dòng 59 |
| 20 | Di chuyển đến cột 20 |
| % | Di chuyển đến các ngoặc trong dòng |
| [[ | Nhảy đến nơi bắt đầu function |
| [{ | Nhảy đến nơi bắt đầu block |

Cut, copy & paste
-----------------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| y | Copy phần text đã chọn vào clipboard |
| p | Paste content |
| dd | Cut dòng hiện tại |
| yw | Copy word |
| yy | Copy dòng hiện tại |
| y$ | Copy đến cuối dòng |
| D | Copy tới cuối file |

Search
------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| /word | Tìm kiếm "word" từ trên xuống dưới |
| ?word | Tìm kiếm "word" từ dưới lên trên |
| * | Tìm kiếm từ con trỏ |
| /\cstring | Tìm "String" cả chữ hoa lẫn chữ thường |
| /jo[ha]n | Tìm "john" và "joan" |
| /< the | Tìm từ bắt đầu bằng the ví dụ: theatre or then |
| /the> | Tìm từ kết thúc bằng the ví dụ: breathe |

Replace
-------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| :%s/old/new/g | Replace toàn bộ old thành new ở trong file |
| :%s/onward/forward/gi | Replace toàn bộ onward thành forward ở trong file, case unsensitive |
| %s/old/new/gc | Replace toàn bộ old thành new ở trong file kèm theo confirm |
| :2,35s/old/new/g | Replace toàn bộ old thành new từ dòng 2 đến 35 |
| :5,$s/old/new/g | Replace toàn bộ old thành new từ dòng 5 đến EOF |
| :%s/^/hello/g | Thêm vào đầu của mỗi dòng bằng hello |
| :%s/$/Harry/g | Thêm vào cuối của mỗi dòng bằng Harry |
| :g/string/d | Xoá toàn bộ các dòng có chứa từ string |
| /Bill/Steve/g | Thay thế Bill thành Steve tại dòng hiện tại |
| Ctrl+a | +1 cho số tại nơi con trỏ đang chỉ |
| Ctrl+x | -1 cho số tại nơi con trỏ đang chỉ |

Case
----

| Câu lệnh | Ý nghĩa |
| --- | --- |
| Vu | Lowercase dòng hiện tại |
| VU | Uppercase dòng hiện tại |
| g~~ | Chuyền dòng hiện tại thành Uppercase và ngược lại |
| vEU | Chuyển thành Uppercase |

```
| ggguG     | Biến tất cả chữ trong file thành lowercase     |

```

| gggUG| Biến tất cả chữ trong file thành uppercase | | :set ignorecase | Ignore case trong search | | :set smartcase | Ignore case trong search ngoại trừ trong search có chữ in hoa |

Đọc/Viết file
-------------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| :1,10 w outfile | Lưu dòng 1 đến dòng 10 trong outfile |
| :1,10 w >> outfile | Nối dòng 1 đến dòng 10 trong outfile |
| :r infile | Insert content vào infile |
| :23r infile | Insert content vào infile sau dòng 23 |

File explorer
-------------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| :e. | Mở File explorer |
| :Sex | Chia đôi màn hình mở File explorer |
| :Sex! | Chia đôi màn hình theo chiều dọc và mở File Explorer |
| :ls | List Buffer |
| :cd .. | Đến thư mục cha |
| :args | List files |
| :args *.php | Mở file theo định dạng mong muốn |
| gf | Mở File tại nơi con trỏ chỉ |

Alignment
---------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| :%!fmt | Align tất cả các dòng |
| !}fmt | Allign tất cả các dòng tại vị trí hiện tại |
| 5!!fmt | Allign 5 dòng tiếp theo |

Tab/Windows
-----------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| :tabnew | Tạo tab mới |
| gt | Chuyển sang tab tiếp theo |
| :tabfirst | Chuyển tới Tab đầu tiên |
| :tablast | Chuyển tới Tab cuối cùng |
| :tabm n(position) | Chuyển vị trí tab |

Windows Spliting
----------------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| :e filename | Sửa filenane tại thời màn hình hiện tại |
| :split filename | Chia đôi màn hình và mở filename |
| :sp filename | Chia đôi màn hình theo chiều ngang |
| :vs filename | Chia đôi màn hình theo chiều dọc |
| Ctrl + w + hướng | Điều hướng giữa các màn hình đã chia |
| Ctrl + w_ | Max chiều dọc cho màn hình hiện tại |
| Ctrl +w | Max chiều ngang cho màn hình hiện tại |
| Ctrl-w= | Điều chỉnh kích thước bằng nhau cho tất cả các màn hình |
| 10 ctrl-w+ | Thêm 10 dòng cho màn hình hiện tại |
| :hide | Đóng màn hình hiện tại |
| :nly | Đóng tất cả màn hình trừ màn hình hiện tại |

Auto-completion
---------------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| Ctrl+n Ctrl+p (in insert mode) | Complete word |
| Ctrl+x Ctrl+l | Complete line |
| :set dictionary=dict | Define dict as a dictionnary |
| Ctrl+x Ctrl+k | Complete with dictionnary |

Marks
-----

| Câu lệnh | Ý nghĩa |
| --- | --- |
| m {a-z} | Marks vị trí hiện tại với chữ cái đc set {a -z} |
| '{a-z} | Move đến vị trí |
| " | Move đến vị trí trước đó |

Text Indent
-----------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| :set autoindent | Turn on auto-indent |
| :set smartindent | Turn on intelligent auto-indent |
| :set shiftwidth=4 | Định nghĩa indent bằng 4 space |
| ctrl-t, ctrl-d | Indent/un-indent trong insert mode |
| >> | Indent |
| << | Un-Indent |
| =% | Indent code trong dấu ngoặc |
| 1GVG= | Indent toàn bộ file |

Syntax highlighting
-------------------

| Câu lệnh | Ý nghĩa |
| --- | --- |
| :syntax on | Turn on syntax highlighting |
| :syntax off | Turn off syntax highlighting |
| :set syntax=perl | Force syntax highlighting |

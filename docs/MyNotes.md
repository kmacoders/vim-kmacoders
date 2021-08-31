## Map

#### 3 chế độ map

- n...map : map ở normal
- i...map: map ở insert
- v...map: map ở visual
- ...map: không phân biệt map ở mode nào

#### Phím Leader và Silent map
```
nnoremap <silent> <leader>b :FloatermToggle<CR>
```
`leader` là một phím đặc biệt trong VIM. Nó là phím đi kèm với rất rất nhiều các chức năng. Mặc định phím này chính là phím `/` trên bàn phím. Nhưng ta có thể gán lại cho nó nếu muốn. Như mình thì mình gán lại phím `leader` thành phím `space`
```
let mapleader=" "
```
Còn `<silent>` tức là 'im lặng', thông thường khi ấn tổ hợp kia, 1 câu lệnh `:FloatermToggle` sẽ được in ở góc màn hình. Nếu ta không thích thì thêm `<silent>` vào, lúc này câu lệnh đó sẽ không được in nữa.
`<CR>` mình sẽ giải thích ở dưới.

#### Map recusive ( ...map ) và no-recusive ( ...noremap )
- Map đệ quy ví dụ như 
```
nmap f gg
nmap s f
```
gg là lệnh goto đến dòng đầu tiên của file. Khi map như kia tức là ở mode normal nếu ấn `f` thì sẽ nhảy đến dòng đầu tiên của file như gg. Bên dưới lại gán 1 lần nữa sang cho `f`. Tức là có đệ quy. Ấn `s` sẽ thành gọi đến `f`, `f` lại gọi đến `gg`. Hiểu như là bắc cầu vậy.

- Map không đệ quy 

```
nmap f gg
nnoremap s f
```

Vậy thì khi dùng `nnoremap` thì sẽ không có đệ quy nữa, hiểu nôm na là không có bắc cầu nữa. Tức là lúc này ấn `s` thì sẽ gọi đến `f` như trên, nhưng mà `f` lúc này không có đệ quy, nên nó không gọi đến `gg` nữa.

#### Các phím chức năng

Ví dụ 
```
nnoremap <C-t> :NERDTreeToggle<CR>
```

Giải thích

- `C` là phím chức năng, đại diện cho phím Control. 
- Dấu `-` tức là đại diện cho tổ hợp phím. Tổ hợp phím là các phím được nhấn và giữ cùng lúc nhé ( nhắc lại là cùng lúc chứ không phải liên tiếp ). Ví dụ như kia thì sẽ là ấn `Control + t` để đóng mở NerdTree trong VIM.
- `<CR>` là viết tắt của Carriage Return, hiểu nôm na là ấn Enter sau khi ấn tổ hợp phím. Nó tương ứng với lệnh `<Return>` hoặc `<Enter>`. Vì sao lại thế, vì bạn thấy là tổ hợp kia được gán cho **lệnh** `:NERDTreeToggle`, mà đã là lệnh thì ấn xong ta cần VIM ấn hộ mình luôn nút Enter chứ. Một trường hợp quen thuộc khác như 
```
nnoremap <C-s> :wq<CR>
```
Bình thường muốn save và quit file mình ấn vào mode lệnh rồi gõ :wq rồi ấn Enter đúng không ? Thì giờ gán nó thành `Control + s` thì nó mới chỉ hiểu là `:wq` thôi, cần phải ấn `Enter` nữa chứ. Đó là lý do vì sao có `<CR>` ở cuối. Còn nếu gán bình thường như `nmap f gg` thì không cần `Enter`.
Ngoài ra còn có 1 số phím chức năng khác :

- `M` là phím Alt
- `S` là phím Shift

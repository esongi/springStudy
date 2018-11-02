select * from tbl_board order by bno desc;

select /*+INDEX_DESC (tbl_board pk_board) */*
from tbl_board;

select /*+ FULL(tbl_board) */ * from tbl_board order by bno desc;

select * from tbl_board where bno > 0;

select /*+ INDEX_ASC(tbl_board pk board) */ * from tbl_board
where bno > 0;

select rownum rn, bno, title from tbl_board;

select /*+ FULL(tbl_board) */
    rownum rn, bno, title
from tbl_board where bno >0
order by bno;

select /*+ INDEX_ASC(tbl_board pk_board) */
    rownum rn, bno, title, content
    from tbl_board;
    
select
/*+ INDEX_DESC(tbl_board pk_board) */
rownum rn, bno, title, content
from tbl_board
where bno > 0;

select /*+ INDEX_DESC(tbl_board pk_board) */
    rownum rn, bno, title, content
    from
    tbl_board
    where rownum >10 and rownum <= 10;
    
select /*+ INDEX_DESC(tbl_board pk_board) */
    rownum rn, bno, title, content
    from
    tbl_board
    where rownum <= 10;

--ROWNUM은 반드시 1이 포함되도록 해야 한다    
select /*+INDEX_DESC(tbl_board pk_board) */
    rownum rn, bno, title, content
from
    tbl_board
where rownum <= 20;

select 
    bno, title, content
    from
    (
    select /*+INDEX_DESC(tbl_board pk_board) */
    rownum rn, bno, title, content
from
    tbl_board
where rownum <= 20
)
where rn > 10;

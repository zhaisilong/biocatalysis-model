import logging
from logging import FileHandler
from typing import Optional

from rich.logging import RichHandler

from itertools import takewhile, repeat

def iter_count(file_name):
    """获取文本行数"""
    buffer = 1024 * 1024
    with open(file_name) as f:
        buf_gen = takewhile(lambda x: x, (f.read(buffer) for _ in repeat(None)))
        return sum(buf.count('\n') for buf in buf_gen)

def get_logger(name: Optional[str] = None, filename: Optional[str] = None, level: str = 'NOTSET'):
    """获取一个 Rich 美化的 Logger"""
    name = name if name else __name__

    handlers = [RichHandler(
            rich_tracebacks=True,
        )]
    if filename:
        handlers.append(FileHandler(filename))

    logging.basicConfig(
        level=level,
        format='%(name)s: %(message)s',
        handlers=handlers)
    return logging.getLogger(name)
from math import ceil
from time import time
from time import sleep

def ft_progress(listy: 'list[Any]', w: int = 100):

    try:
        size = len(listy)
    except TypeError:
        print("error: ft_progress() argument must be a sequence")
        return

    if size <= 1:
        return

    start = time()
    for i, item in enumerate(listy):
        percent = [i / (size - 1) * 100, 100][i == size - 1]
        perw = ceil(i / (size - 1) * w)
        elapsed = time() - start
        eta = elapsed * size / (i + 1) - elapsed
        print(f"\rETA: {eta:.2f}s",
              f" [{percent:3.0f}%]",
              f" [{'=' * perw}{['>','='][i == size - 1]}{' ' * (w - perw)}]",
              f"\t{i + 1}/{size} | ",
              f"elapsed time {elapsed:.2f}s",
              end="\033[0m")
        yield item

if __name__ == "__main__":
    listy = range(1000)
    ret = 0
    for elem in ft_progress(listy):
        ret += (elem + 3) % 5
        sleep(0.01)
    print()
    print(ret)

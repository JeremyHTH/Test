from pathlib import Path
import os,sys

FILE = Path(__file__).resolve()
ROOT = FILE.parents[0]  # YOLOv5 root directory
if str(ROOT) not in sys.path:
    sys.path.append(str(ROOT))  # add ROOT to PATH
ROOT = Path(os.path.relpath(ROOT, Path.cwd()))

def main():
    
    name = 'human_{}.jpg'
    for index in range(2001,2464):
        oldname = os.path.join(ROOT,name.format(index))
        newname = os.path.join(ROOT,name.format(index-176))
        os.rename(oldname,newname)

if __name__ == '__main__':
    main()
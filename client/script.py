import sys

def main():
    arg1 = str(sys.argv[1])
    open(arg1 + ".txt", 'w')

if __name__ == '__main__':
    main()

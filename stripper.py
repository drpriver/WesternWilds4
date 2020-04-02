import os

def find_files(d):
    result = []
    for f in os.listdir(d):
        if f.startswith('.'):
            continue
        p = os.path.join(d, f)
        if os.path.isfile(p):
            if f.endswith('.dnd'):
                result.append(p)
        elif os.path.isdir(p):
            result += find_files(p)
    return result
        

def main():
    files = find_files('.')
    for f in files:
        with open(f, 'r') as fp:
            lines = [line.rstrip() for line in fp]
        with open(f, 'w') as fp:
            for line in lines:
                print(line, file=fp)
    
if __name__ == '__main__':
    main()

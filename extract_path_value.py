import sys

def main():
    if len(sys.argv) != 3:
        print("Usage: python3 extract_path_value.py <filename> <keyword>")
        return

    filename = sys.argv[1]
    keyword = sys.argv[2]

    with open(filename, 'r') as f:
        for line in f:
            if keyword in line:
                print(line.strip())

if __name__ == "__main__":
    main()

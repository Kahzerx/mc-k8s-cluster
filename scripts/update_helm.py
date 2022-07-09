import os.path


def get_actual_name():
    if os.path.isdir("helm"):
        dirs = os.listdir("helm")
        d_found = 0
        for d in dirs:
            if os.path.isdir(os.path.join("helm", d)):
                d_found += 1
        if d_found == 1:
            for d in dirs:
                if os.path.isdir(os.path.join("helm", d)):
                    return d
    return ""


def find_files(path: str):
    return [os.path.join(root, file) for root, _, files in os.walk(path) for file in files]


def update_file_content(path, old_name, new_name):
    with open(path, "r") as f:
        content = f.read()
        content = content.replace(old_name, new_name)
    with open(path, "w") as f:
        f.write(content)


def main():
    helm_name = get_actual_name()
    if not helm_name:
        print("Error finding dir name inside helm")
        return
    new_name = input("Insert new name: ")
    print(f"Setting new name: {helm_name} -> {new_name}")

    files = find_files(os.path.join("helm", helm_name))
    for file in files:
        update_file_content(file, helm_name, new_name)
    os.rename(os.path.join("helm", helm_name), os.path.join("helm", new_name))


if __name__ == '__main__':
    main()

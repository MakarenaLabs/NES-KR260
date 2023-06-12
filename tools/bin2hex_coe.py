import sys

def save_hex_representation(file_path, output_path):
    try:
        with open(file_path, 'rb') as file:
            data = file.read()
    except IOError:
        print("Cannot open file:", file_path)
        return

    hex_data = '\n'.join(f'{byte:02x}' for byte in data)

    verilog_init_data = ""
    for i, byte in enumerate(data):
        verilog_init_data += "BUFMEM["+str(i)+"] = 8'h" + f'{byte:02x}' + ";\n"

    try:
        with open(output_path, 'w') as output_file:
            output_file.write(hex_data)
    except IOError:
        print("Cannot save file:", output_path)
        return
    try:
        with open(output_path+".v", 'w') as output_file:
            output_file.write(verilog_init_data)
    except IOError:
        print("Cannot save file:", output_path+".v")
        return

    print("File saved:", output_path)


def save_coe_representation(input_path, output_path):
 
    try:
        with open(input_path, 'r') as input_file:
            lines = input_file.readlines()
    except IOError:
        print("Impossibile leggere il file:", input_path)
        return

    processed_lines = []
    processed_lines.append("memory_initialization_radix=16;")
    processed_lines.append("memory_initialization_vector=")
    for i in range(len(lines)):
        line = lines[i].rstrip()  # remove \n
        if i == len(lines) - 1:
            processed_lines.append(line + ";")  # add ";" to the last line
        else:
            processed_lines.append(line + ",")  # add "," to the mid lines

    try:
        with open(output_path, 'w') as output_file:
            output_file.write('\n'.join(processed_lines))
    except IOError:
        print("Cannot save file:", output_path)
        return

    print("File saved:", output_path)


# Verifica degli argomenti da riga di comando
if len(sys.argv) != 2:
    print("Usage: python bin2hex.py <input_file>")
else:
    input_file = sys.argv[1]
    output_file = input_file.split(".")[0]
    save_hex_representation(input_file, output_file+".hex")
    save_coe_representation(output_file+".hex", output_file+".coe")    
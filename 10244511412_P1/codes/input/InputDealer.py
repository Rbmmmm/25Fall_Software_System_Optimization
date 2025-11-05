class InputDealer:
    def __init__(self, input_file):
        self.input_file = input_file

    def parse_input(self):
        target_program = None
        algorithm = None
        params = {}

        with open(self.input_file, "r") as f:
            for line in f:
                line = line.strip()
                if not line or line.startswith("#"):
                    continue
                key, value = [x.strip() for x in line.split("=")]
                if key == "target_program":
                    target_program = value
                elif key == "search_algorithm":
                    algorithm = value
                else:
                    params[key] = [v.strip() for v in value.split(",")]

        if not target_program or not algorithm:
            raise ValueError("Missing required configuration fields in input.txt")

        return target_program, params, algorithm
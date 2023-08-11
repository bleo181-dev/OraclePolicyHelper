# Oracle Cloud Infrastructure (OCI) Policy Helper Script

This script is designed to aid in the decision-making process for creating policies within Oracle Cloud Infrastructure (OCI).

Author: Leonardo Bombonati
Contact: l.bombonati@reply.it

## Description

The script provides various functions to assist with policy-related tasks within OCI. It primarily operates on Excel files containing policy and permission data.

## Features

1. **Search for API Operation**

   - Search for an API operation within Excel files to find associated permissions and details.
2. **Search for Service Type and Verb**

   - Search for a combination of Service Type and Verb within Excel files to find associated permissions and details.
3. **Policy Builder**

   - Build a policy statement based on the given subject and API operation.
4. **Translate Policy to API Operation**

   - Translate a policy statement into the associated API operation(s).

## Requirements

- Python 3.x
- `openpyxl` library for working with Excel files.

## Usage

The script supports command-line arguments for its various functionalities.

### Searching for API Operation

Search for an API operation to find related permissions and details.

```bash
python policyhelper.py
```

Choose option `A` to search for API operations. Enter the desired API operation (case-sensitive) to get related permissions.

### Searching for Service Type and Verb

Search for a combination of Service Type and Verb to find related permissions.

```bash
python policyhelper.py
```

Choose option `B` to search for Service Type and Verb. Enter the desired Service Type and Verb to get related permissions.

### Building a Policy

Build a policy statement based on the given subject and API operation.

```bash
python policyhelper.py
```

Choose option `C` to build a policy. Enter the subject and API operation to generate a policy statement.

### Translating Policy to API Operation

Translate a policy statement into the associated API operation(s).

```bash
python policyhelper.py -p "Policy Statement"
```

Replace `"Policy Statement"` with your actual policy statement.

## Excel Files

Place Excel files containing policy and permission data in the "Excels" folder within the same directory as the script.

## How to Build and Run the Policy Helper with Docker

To use the Policy Helper script conveniently, you can build and run it inside a Docker container. Here's how:

1. **Build the Docker Image**

   Before building the image, make sure you have Docker installed on your system. Navigate to the directory containing the `Dockerfile`, `build.sh`, and the script files.

   Run the build script to create the Docker image:

   ```bash
   chmod +x build.sh  # Make the build script executable
   ./build.sh
   ```


This will build the Docker image tagged as `policy_helper:stable`.

2. **Run the Docker Container**

To run the script inside the Docker container, you need to provide a policy string as an argument. Replace `<policy_string>` with your actual policy statement. 

```
docker run policy_helper:stable "<policy_string>"
```

Ensure you have placed your Excel files in the "Excels" folder as mentioned in the Requirements section.

> Please note that Docker commands require administrative privileges, so you might need to use `sudo` depending on your system configuration.

## Notes

- The script uses regular expressions for policy translation and requires correct formatting of policy statements.
- Some features depend on the correct organization of data within the Excel files.
- API operation and permission names are case-sensitive.

## Disclaimer

This script is provided as-is, without warranty of any kind. Use it responsibly and verify its results.

---

For any questions or concerns, contact the author: Leonardo Bombonati (l.bombonati@reply.it)

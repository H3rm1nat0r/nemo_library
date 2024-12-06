
# NEMO Library Usage Guide

## Overview

This guide provides an introduction to using the **NEMO Library**, including its main methods and practical use cases.

---

## Installation

Checkout the [Installation Guide](https://github.com/H3rm1nat0r/nemo_library/blob/master/docs/setup_guide.md).

---

## Class Overview

### NemoLibrary

The central class of the library. Instantiating this class gives access to all functions.

#### Initialization

```python
from nemo_library import NemoLibrary

# Example instance
nemo = NemoLibrary(
    environment="your_environment",
    tenant="your_tenant",
    userid="your_userid",
    password="your_password",
    hubspot_api_token="your_hubspot_api_token"
)
```

---

## Method Overview

### Projects

- **`getProjectList()`**
  - **Description:** Returns a list of all projects as a Pandas DataFrame.
  - **Example:**
    ```python
    projects = nemo.getProjectList()
    print(projects)
    ```

- **`getProjectID(projectname: str)`**
  - **Description:** Retrieves the project ID for a given project name.
  - **Example:**
    ```python
    project_id = nemo.getProjectID("ExampleProject")
    print(project_id)
    ```

- **`getProjectProperty(projectname: str, propertyname: str)`**
  - **Description:** Fetches a specific property of a project.
  - **Example:**
    ```python
    property_value = nemo.getProjectProperty("ExampleProject", "propertyName")
    print(property_value)
    ```

- **`createProject(projectname: str, description: str)`**
  - **Description:** Creates a new project.
  - **Example:**
    ```python
    nemo.createProject("New Project", "Project Description")
    ```

- **`deleteProject(projectname: str)`**
  - **Description:** Deletes a project.
  - **Example:**
    ```python
    nemo.deleteProject("ExampleProject")
    ```

### Reports

- **`LoadReport(projectname: str, report_guid: str = None, report_name: str = None)`**
  - **Description:** Loads a report and returns the data as a Pandas DataFrame.
  - **Example:**
    ```python
    report = nemo.LoadReport("ExampleProject", report_name="ExampleReport")
    print(report)
    ```

- **`createOrUpdateReport(projectname: str, displayName: str, querySyntax: str)`**
  - **Description:** Creates or updates a report.
  - **Example:**
    ```python
    nemo.createOrUpdateReport(
        "ExampleProject", "New Report", "SELECT * FROM Table"
    )
    ```

### Data Management

- **`ReUploadFile(projectname: str, filename: str)`**
  - **Description:** Re-uploads a file and triggers data processing.
  - **Example:**
    ```python
    nemo.ReUploadFile("ExampleProject", "data.csv")
    ```

- **`synchronizeCsvColsAndImportedColumns(projectname: str, filename: str)`**
  - **Description:** Synchronizes CSV columns with imported columns.
  - **Example:**
    ```python
    nemo.synchronizeCsvColsAndImportedColumns("ExampleProject", "data.csv")
    ```

### HubSpot Integration

- **`FetchDealFromHubSpotAndUploadToNEMO(projectname: str)`**
  - **Description:** Fetches data from HubSpot and uploads it to a project.
  - **Example:**
    ```python
    nemo.FetchDealFromHubSpotAndUploadToNEMO("ExampleProject")
    ```

---

## Example Use Cases

- **Creating a New Project and Uploading Data**
  ```python
  nemo.createProject("Project A", "Description")
  nemo.ReUploadFile("Project A", "data.csv")
  ```

- **Fetching and Analyzing Project Data**
  ```python
  projects = nemo.getProjectList()
  print(projects.head())
  ```

- **HubSpot Integration**
  ```python
  nemo.FetchDealFromHubSpotAndUploadToNEMO("Project B")
  ```

---

## Frequently Asked Questions (FAQ)

Answers to common questions about using the library.

---

## Next Steps

Further use cases and best practices.

---

This guide covers the main methods and can be expanded with specific details as more requirements or examples become available.

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
nemo = NemoLibrary()
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
  - **Description:** Retrieves the unique project ID for a given project name.
  - **Example:**
    ```python
    project_id = nemo.getProjectID("ExampleProject")
    print(project_id)
    ```

- **`getProjectProperty(projectname: str, propertyname: str)`**
  - **Description:** Retrieves a specific property value of a given project from the server.
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
  - **Description:** Loads a report from a specified project and returns the data as a Pandas DataFrame.
  - **Example:**
    ```python
    report = nemo.LoadReport("ExampleProject", report_name="ExampleReport")
    print(report)
    ```

- **`createOrUpdateReport(projectname: str, displayName: str, querySyntax: str)`**
  - **Description:** Creates or updates a report in the specified project within the NEMO system.
  - **Example:**
    ```python
    nemo.createOrUpdateReport(
        "ExampleProject", "New Report", "SELECT * FROM Table"
    )
    ```

### Data Management

- **`ReUploadFile(projectname: str, filename: str)`**
  - **Description:** Re-uploads a file to a specified project in the NEMO system and triggers data ingestion.
  - **Example:**
    ```python
    nemo.ReUploadFile("ExampleProject", "data.csv")
    ```

- **`synchronizeCsvColsAndImportedColumns(projectname: str, filename: str)`**
  - **Description:** Synchronizes the columns from a CSV file with the imported columns in a specified project.
  - **Example:**
    ```python
    nemo.synchronizeCsvColsAndImportedColumns("ExampleProject", "data.csv")
    ```

### HubSpot Integration

- **`FetchDealFromHubSpotAndUploadToNEMO(projectname: str)`**
  - **Description:** Fetches deal data from HubSpot, processes it, and uploads the combined information to a specified NEMO project.
  - **Example:**
    ```python
    nemo.FetchDealFromHubSpotAndUploadToNEMO("ExampleProject")
    ```

### Metadata Management

- **`MetaDataLoad(projectname: str, prefix: str)`**
  - **Description:** Loads metadata for a specified project.
  - **Example:**
    ```python
    nemo.MetaDataLoad("ExampleProject", "prefix")
    ```

- **`MetaDataCreate(projectname: str, prefix: str)`**
  - **Description:** Creates metadata for a specified project.
  - **Example:**
    ```python
    nemo.MetaDataCreate("ExampleProject", "prefix")
    ```

- **`MetaDataDelete(projectname: str, prefix: str)`**
  - **Description:** Deletes metadata for a specified project.
  - **Example:**
    ```python
    nemo.MetaDataDelete("ExampleProject", "prefix")
    ```

### Focus Management

- **`focusMoveAttributeBefore(projectname: str, sourceDisplayName: str, targetDisplayName: str = None, groupInternalName: str = None)`**
  - **Description:** Moves an attribute in the focus tree of a specified project, positioning it before a target attribute.
  - **Example:**
    ```python
    nemo.focusMoveAttributeBefore("ExampleProject", "SourceAttribute", "TargetAttribute")
    ```

- **`focusCoupleAttributes(projectname: str, attributenames: list[str], previous_attribute: str)`**
  - **Description:** Couples attributes in the focus tree of a specified project.
  - **Example:**
    ```python
    nemo.focusCoupleAttributes("ExampleProject", ["Attribute1", "Attribute2"], "PreviousAttribute")
    ```

### Migration Management

- **`MigManInitDatabase()`**
  - **Description:** Initializes the migration database.
  - **Example:**
    ```python
    nemo.MigManInitDatabase()
    ```

- **`MigManCreateProjectTemplates()`**
  - **Description:** Creates project templates for migration.
  - **Example:**
    ```python
    nemo.MigManCreateProjectTemplates()
    ```

- **`MigManDeleteProjects()`**
  - **Description:** Deletes projects for migration.
  - **Example:**
    ```python
    nemo.MigManDeleteProjects()
    ```

- **`MigManLoadData()`**
  - **Description:** Loads data for migration.
  - **Example:**
    ```python
    nemo.MigManLoadData()
    ```

- **`MigManCreateMapping()`**
  - **Description:** Creates mapping for migration.
  - **Example:**
    ```python
    nemo.MigManCreateMapping()
    ```

- **`MigManLoadMapping()`**
  - **Description:** Loads mapping for migration.
  - **Example:**
    ```python
    nemo.MigManLoadMapping()
    ```

- **`MigManApplyMapping()`**
  - **Description:** Applies mapping for migration.
  - **Example:**
    ```python
    nemo.MigManApplyMapping()
    ```

- **`MigManExportData()`**
  - **Description:** Exports data for migration.
  - **Example:**
    ```python
    nemo.MigManExportData()
    ```

### Attribute Groups

- **`getAttributeGroups(projectname: str, filter: str = "*", filter_type: FilterType = FilterType.STARTSWITH, filter_value: FilterValue = FilterValue.DISPLAYNAME)`**
  - **Description:** Fetches AttributeGroups metadata with the given filters.
  - **Example:**
    ```python
    attribute_groups = nemo.getAttributeGroups("ExampleProject")
    print(attribute_groups)
    ```

- **`createAttributeGroups(projectname: str, attributegroups: list[AttributeGroup])`**
  - **Description:** Creates or updates a list of AttributeGroups.
  - **Example:**
    ```python
    nemo.createAttributeGroups("ExampleProject", attributegroups)
    ```

- **`deleteAttributeGroups(attributegroups: list[str])`**
  - **Description:** Deletes a list of AttributeGroups by their IDs.
  - **Example:**
    ```python
    nemo.deleteAttributeGroups(["AttributeGroup1", "AttributeGroup2"])
    ```

### Metrics

- **`getMetrics(projectname: str, filter: str = "*", filter_type: FilterType = FilterType.STARTSWITH, filter_value: FilterValue = FilterValue.DISPLAYNAME)`**
  - **Description:** Fetches Metrics metadata with the given filters.
  - **Example:**
    ```python
    metrics = nemo.getMetrics("ExampleProject")
    print(metrics)
    ```

- **`createMetrics(projectname: str, metrics: list[Metric])`**
  - **Description:** Creates or updates a list of Metrics.
  - **Example:**
    ```python
    nemo.createMetrics("ExampleProject", metrics)
    ```

- **`deleteMetrics(metrics: list[str])`**
  - **Description:** Deletes a list of Metrics by their IDs.
  - **Example:**
    ```python
    nemo.deleteMetrics(["Metric1", "Metric2"])
    ```

### Tiles

- **`getTiles(projectname: str, filter: str = "*", filter_type: FilterType = FilterType.STARTSWITH, filter_value: FilterValue = FilterValue.DISPLAYNAME)`**
  - **Description:** Fetches Tiles metadata with the given filters.
  - **Example:**
    ```python
    tiles = nemo.getTiles("ExampleProject")
    print(tiles)
    ```

- **`createTiles(projectname: str, tiles: list[Tile])`**
  - **Description:** Creates or updates a list of Tiles.
  - **Example:**
    ```python
    nemo.createTiles("ExampleProject", tiles)
    ```

- **`deleteTiles(tiles: list[str])`**
  - **Description:** Deletes a list of Tiles by their IDs.
  - **Example:**
    ```python
    nemo.deleteTiles(["Tile1", "Tile2"])
    ```

### Pages

- **`getPages(projectname: str, filter: str = "*", filter_type: FilterType = FilterType.STARTSWITH, filter_value: FilterValue = FilterValue.DISPLAYNAME)`**
  - **Description:** Fetches Pages metadata with the given filters.
  - **Example:**
    ```python
    pages = nemo.getPages("ExampleProject")
    print(pages)
    ```

- **`createPages(projectname: str, pages: list[Page])`**
  - **Description:** Creates or updates a list of Pages.
  - **Example:**
    ```python
    nemo.createPages("ExampleProject", pages)
    ```

- **`deletePages(pages: list[str])`**
  - **Description:** Deletes a list of Pages by their IDs.
  - **Example:**
    ```python
    nemo.deletePages(["Page1", "Page2"])
    ```

### Applications

- **`getApplications(projectname: str, filter: str = "*", filter_type: FilterType = FilterType.STARTSWITH, filter_value: FilterValue = FilterValue.DISPLAYNAME)`**
  - **Description:** Fetches Applications metadata with the given filters.
  - **Example:**
    ```python
    applications = nemo.getApplications("ExampleProject")
    print(applications)
    ```

- **`createApplications(projectname: str, applications: list[Application])`**
  - **Description:** Creates or updates a list of Applications.
  - **Example:**
    ```python
    nemo.createApplications("ExampleProject", applications)
    ```

- **`deleteApplications(applications: list[str])`**
  - **Description:** Deletes a list of Applications by their IDs.
  - **Example:**
    ```python
    nemo.deleteApplications(["Application1", "Application2"])
    ```

### Diagrams

- **`getDiagrams(projectname: str, filter: str = "*", filter_type: FilterType = FilterType.STARTSWITH, filter_value: FilterValue = FilterValue.DISPLAYNAME)`**
  - **Description:** Fetches Diagrams metadata with the given filters.
  - **Example:**
    ```python
    diagrams = nemo.getDiagrams("ExampleProject")
    print(diagrams)
    ```

- **`createDiagrams(projectname: str, diagrams: list[Diagram])`**
  - **Description:** Creates or updates a list of Diagrams.
  - **Example:**
    ```python
    nemo.createDiagrams("ExampleProject", diagrams)
    ```

- **`deleteDiagrams(diagrams: list[str])`**
  - **Description:** Deletes a list of Diagrams by their IDs.
  - **Example:**
    ```python
    nemo.deleteDiagrams(["Diagram1", "Diagram2"])
    ```

### Defined Columns

- **`getDefinedColumns(projectname: str, filter: str = "*", filter_type: FilterType = FilterType.STARTSWITH, filter_value: FilterValue = FilterValue.DISPLAYNAME)`**
  - **Description:** Fetches DefinedColumns metadata with the given filters.
  - **Example:**
    ```python
    defined_columns = nemo.getDefinedColumns("ExampleProject")
    print(defined_columns)
    ```

- **`createDefinedColumns(projectname: str, definedcolumns: list[DefinedColumn])`**
  - **Description:** Creates or updates a list of DefinedColumns.
  - **Example:**
    ```python
    nemo.createDefinedColumns("ExampleProject", definedcolumns)
    ```

- **`deleteDefinedColumns(definedcolumns: list[str])`**
  - **Description:** Deletes a list of DefinedColumns by their IDs.
  - **Example:**
    ```python
    nemo.deleteDefinedColumns(["DefinedColumn1", "DefinedColumn2"])
    ```

### Imported Columns

- **`getImportedColumns(projectname: str, filter: str = "*", filter_type: FilterType = FilterType.STARTSWITH, filter_value: FilterValue = FilterValue.DISPLAYNAME)`**
  - **Description:** Fetches ImportedColumns metadata with the given filters.
  - **Example:**
    ```python
    imported_columns = nemo.getImportedColumns("ExampleProject")
    print(imported_columns)
    ```

- **`createImportedColumns(projectname: str, importedcolumns: list[ImportedColumn])`**
  - **Description:** Creates or updates a list of ImportedColumns.
  - **Example:**
    ```python
    nemo.createImportedColumns("ExampleProject", importedcolumns)
    ```

- **`deleteImportedColumns(importedcolumns: list[str])`**
  - **Description:** Deletes a list of ImportedColumns by their IDs.
  - **Example:**
    ```python
    nemo.deleteImportedColumns(["ImportedColumn1", "ImportedColumn2"])
    ```

### SubProcesses

- **`getSubProcesses(projectname: str, filter: str = "*", filter_type: FilterType = FilterType.STARTSWITH, filter_value: FilterValue = FilterValue.DISPLAYNAME)`**
  - **Description:** Fetches SubProcesses metadata with the given filters.
  - **Example:**
    ```python
    subprocesses = nemo.getSubProcesses("ExampleProject")
    print(subprocesses)
    ```

### Example Use Cases

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

Transformers and Importing
================

Before the hierarchy builder service can be used meaningfully, the database must be prepopulated with full (generic) hierarchies to build from.


### Transformers

There are 2 primary ways to generate hierarchy import scripts, and they each rely on a CSV input

#### Using a generic hierarchy input file

A CSV of 4 columns is needed: `codelist, code, label, parentcode`. While the names of these columns is not important, the order is!
Ideally, this CSV should be placed at `import-scripts/<codelist>.csv`, as recommended below. This will allow for the following make target to be used:

`CODE_LIST=<codelist> make generate-full-import`
where `<codelist>` is replaced by the list you're aiming to create an import file for.

The result should be the creation of the relevant files in the `cypher` and `gremlin` subdirectories of `import-scripts`

#### Using a geography input file

The geography team publish hierarchies as part of their regular process. This includes an established CSV format.
When working with these CSVs, run the following command, replacing the CSV file name as needed.

`make FILE=./cmd/geography-transformer/WD16_LAD16_CTY16_OTH_UK_LU.csv  generate-full-from-geography `

By default, output is written to ``./cmd/geography-transformer/output`, but you should ensure your outputs are redirected or copied
to the relevant `import-scripts` locations along with you input file.

### Import files

In order to keep track of how scripts have been generated, their inputs should be stored as CSVs in [import-scripts](./import-scripts)

The `import-scripts` directory contains further subdirectories for `cypher` and `gremlin` outputs. For consistency,
all of these files should be named for the codelist/hierarchy ID they relate to.
# posb Bench (Publications Office Benchmark)


# Update 2022: New Benchmark started on the 5th, January till end of June, 2022
This will update the repository with new findings and results.

# Update July 2019: We have included the results of testing with AWS Neptune 

This repository contains the resources used for benchmarking EU Publications Office dataset. The dump are accessible from the publisher. However, almost all the dataset used in PROD are available in the following endpoint:  http://publications.europa.eu/webapi/rdf/sparql

This folder contains the resources of the POSB Benchmark. The folder is structured as follows:
  - Graph store configurations under /config
  - Benchmark queries under /bench/queries
  - Benchmark scripts under /bench/bencher for the sample scripts used for the benchmark
  - Benchmark results under /bench/results
  - Benchmark output with CSV files in /benchoutput
  - Scripts used for bulk loading under /script
  
  
 # Publications work 2017
   - First ref. paper https://hobbitdata.informatik.uni-leipzig.de/quweda/quweda2018/QuWeDa2018_paper_5.pdf
   - Blog Mondeca (en français): http://blog.mondeca.com/2019/02/01/benchmark-de-aws-neptune-1-0/
   - Empirical Evaluation of a Cloud-based Graph Database: the Case of Neptune: https://link.springer.com/chapter/10.1007/978-3-030-91305-2_3 
 
 # Dump for download 
 https://doi.org/10.5281/zenodo.1036738 
 # License
 This project is licensed under the terms of the MIT license.

 # ACKNOWLEDGEMENTS
 - Publications Office (PO) for the datasets used for the benchmark.
 - Cellar team at PO
 - Folks at Oracle (Boston), Stardog Union, Ontotext, OpenLinks, AWS Neptune
 - Folks at Neo4J

### Author: Ghislain Atemezing (Mondeca)
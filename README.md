# posb Benchmark
================

# [Update July 2019:] We have included the results of testing with AWS Neptune 

This repository contains the resources used for benchmarking EU Publications Office dataset. The dump are accessible from the publisher. However, almost all the dataset used in PROD are available in the following endpoint:  http://publications.europa.eu/webapi/rdf/sparql

This folder contains the resources of the POSB Benchmark. The folder is structured as follows:
  - RDF store configurations under /config
  - Benchmark queries under /bench/queries
  - Benchmark scripts under /bench/bencher for the sample scripts used for the benchmark
  - Benchmark results under /bench/results
  - Benchmark output with CSV files in /benchoutput
  - Scripts used for bulk loading under /script
  
  
 # Publications
   - First ref. paper https://hobbitdata.informatik.uni-leipzig.de/quweda/quweda2018/QuWeDa2018_paper_5.pdf
   - Blog Mondeca (en français): http://blog.mondeca.com/2019/02/01/benchmark-de-aws-neptune-1-0/
 
 # Dump for download
 https://doi.org/10.5281/zenodo.1036738 
 # License
 This project is licensed under the terms of the MIT license.

 # ACKNOWLEDGEMENTS
 - Publications Office for the datasets used for the benchmark.
 - Folks at Oracle (Boston), Stardog Union, Ontotext, OpenLinks, AWS Neptune

rdf-vocab
=========

A library of RDF vocabularies generated from RDF schema and web ontologies (OWL) using the ruby-rdf vocab-loader.

[![Gem Version](https://badge.fury.io/rb/rdf-vocab.svg)](http://badge.fury.io/rb/rdf-vocab)
[![Build Status](https://travis-ci.org/projecthydra-labs/rdf-vocab.svg?branch=master)](https://travis-ci.org/projecthydra-labs/rdf-vocab)

See the list of rake tasks in the `vocab` namespace for specific vocabulary generators.

## Vocabularies

- RDF::LDP
- RDF::MADS
- RDF::MARC_RELATORS
- RDF::MODS
- RDF::PREMIS::V1
- RDF::PremisEventType (LoC)

## Installation

Add to your Gemfile

    gem "rdf-vocab"

then

    bundle install
    
## Usage

    require "rdf-vocab"
    
This will load all the vocabulary classes in the library.

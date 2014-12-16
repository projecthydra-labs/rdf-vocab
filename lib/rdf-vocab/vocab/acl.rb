# -*- encoding: utf-8 -*-
# This file generated automatically using vocab-fetch from http://www.w3.org/ns/auth/acl
require 'rdf'
module RDF::Vocab
  class ACL < RDF::StrictVocabulary("http://www.w3.org/ns/auth/acl#")

    # Class definitions
    term :Access,
      comment: %(Any kind of access to a resource. Don't use this, use R W and RW).freeze,
      "http://www.w3.org/ns/auth/acl#label" => %(access).freeze,
      label: "Access".freeze,
      type: "rdfs:Class".freeze
    term :Append,
      comment: %(Append accesses are specific write access which only add information, and do not remove information.
    For text files, for example, append access allows bytes to be added onto the end of the file.
    For RDF graphs, Append access allows adds triples to the graph but does not remove any.
    Append access is useful for dropbox functionality.
    Dropbox can be used for link notification, which the information added is a notification
    that a some link has been made elsewhere relevant to the given resource.
    ).freeze,
      label: "append".freeze,
      subClassOf: ["http://www.w3.org/ns/auth/acl#Access".freeze, "http://www.w3.org/ns/auth/acl#Write".freeze],
      type: "rdfs:Class".freeze
    term :Authorization,
      comment: %(An element of access control,
    allowing agent to agents access of some kind to resources or classes of resources).freeze,
      label: "authorization".freeze,
      type: "rdfs:Class".freeze
    term :Control,
      comment: %(Allows read/write access to the ACL for the resource\(s\)).freeze,
      label: "control".freeze,
      subClassOf: "http://www.w3.org/ns/auth/acl#Access".freeze,
      type: "rdfs:Class".freeze
    term :Read,
      comment: %(The class of read operations).freeze,
      label: "read".freeze,
      subClassOf: "http://www.w3.org/ns/auth/acl#Access".freeze,
      type: "rdfs:Class".freeze
    term :Write,
      label: "write".freeze,
      subClassOf: "http://www.w3.org/ns/auth/acl#Access".freeze,
      type: "rdfs:Class".freeze

    # Property definitions
    property :accessControl,
      comment: %(The Access Control file for this information resource.
        This may of course be a virtual resorce implemented by the access control system.
        Note also HTTP's header  Link:  foo.meta ;rel=meta can be used for this.).freeze,
      domain: "http://www.w3.org/2006/gen/ont#InformationResource".freeze,
      label: "access control".freeze,
      range: "http://www.w3.org/2006/gen/ont#InformationResource".freeze,
      subPropertyOf: "rdfs:seeAlso".freeze,
      type: "rdf:Property".freeze
    property :accessTo,
      comment: %(The information resource to which access is being granted.).freeze,
      domain: "http://www.w3.org/ns/auth/acl#Authorization".freeze,
      label: "to".freeze,
      range: "http://www.w3.org/2006/gen/ont#InformationResource".freeze,
      type: "rdf:Property".freeze
    property :accessToClass,
      comment: %(A class of information resources to which access is being granted.).freeze,
      domain: "http://www.w3.org/ns/auth/acl#Authorization".freeze,
      label: "to all in".freeze,
      range: "rdfs:Class".freeze,
      type: "rdf:Property".freeze
    property :agent,
      comment: %(A person or social entity to being given the right).freeze,
      domain: "http://www.w3.org/ns/auth/acl#Authorization".freeze,
      label: "agent".freeze,
      range: "foaf:Agent".freeze,
      type: "rdf:Property".freeze
    property :agentClass,
      comment: %(A class of persons or social entities to being given the right).freeze,
      domain: "http://www.w3.org/ns/auth/acl#Authorization".freeze,
      label: "agent class".freeze,
      range: "rdfs:Class".freeze,
      type: "rdf:Property".freeze
    property :defaultForNew,
      comment: %(A directory for which this authorization is used for new files in the directory.).freeze,
      domain: "http://www.w3.org/ns/auth/acl#Authorization".freeze,
      label: "default access for new things in".freeze,
      type: "rdf:Property".freeze
    property :mode,
      comment: %(A mode of access such as read or write.).freeze,
      domain: "http://www.w3.org/ns/auth/acl#Authorization".freeze,
      label: "access mode".freeze,
      range: "rdfs:Class".freeze,
      type: "rdf:Property".freeze
    property :owner,
      comment: %(The person or other agent which owns this. 
    For example, the owner of a file in a filesystem.
    There is a sense of right to control.   Typically defaults to the agent who craeted
    something but can be changed.).freeze,
      label: "owner".freeze,
      range: "foaf:Agent".freeze,
      type: "rdf:Property".freeze
  end
end

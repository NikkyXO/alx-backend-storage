#!/usr/bin/env python3
""" 8-all """


def list_all(mongo_collection):
    """Python function that lists all documents in a collection"""
    if mongo_collection is not None:
        return mongo_collection.find()
    else:
        return []

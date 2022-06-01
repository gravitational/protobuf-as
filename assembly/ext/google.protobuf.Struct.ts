// Returns struct field by name. If field does not exists, it gets created and added to the fields collection.
get(name: string): Value {
    if (this.fields.has(name)) {
      return this.fields.get(name);
    } 

    const v = new Value()
    v.setNull()
    this.fields.set(name, v)
    return v
  }

// Sets field value
set<T>(value: T): Value {
  this.setNull();
  this.null_value = 0;

  if (isBoolean<T>(value)) {
    this.bool_value = value;
  } else if (isInteger<T>(value) || isFloat<T>(value)) {
    this.number_value = value;
  } else if (isString<T>(value)) {
    this.string_value = value;
  } else if (value instanceof Struct) {
    this.struct_value = value;
  } else if (value instanceof Value) {
    this.null_value = value.null_value
    this.number_value = value.number_value
    this.string_value = value.string_value
    this.struct_value = value.struct_value
    this.list_value = value.list_value
  } else if (isArray(value)) {
    const v = new ListValue()
    for (let i: i32 = 0; i < value.length; i++) {
      v.values.push(new Value().set(value[i]))
    }
    this.list_value = v
  }

  return this
}

// Sets field value to null
setNull(): void {
  this.null_value = 1;
  this.bool_value = false;
  this.string_value = "";
  this.struct_value = null;
  this.list_value = null;
}

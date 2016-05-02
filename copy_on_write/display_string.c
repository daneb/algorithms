#include "ruby.h"

static VALUE display_string(VALUE self, VALUE str) {
  char *ptr;
  printf("DEBUG: RString = 0x%lx\n", str);
  ptr = RSTRING_PTR(str);
  printf("DEBUG: ptr     = 0x%lx -> \"%s\"\n", (VALUE)ptr, ptr);
  printf("DEBUG: len     = %ld\n", RSTRING_LEN(str));
  return Qnil;
}

void Init_display_string() {
  VALUE klass;
  klass = rb_define_class("Debug", rb_cObject);
  rb_define_method(klass, "display_string", display_string, 1);
}
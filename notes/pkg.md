The packaging system will be slightly different than other languages.

The packaging file will define the pkg layout, it will look something like:

```
// pkg.wht

exports {
  myFun = foo,
  MyType = pkg.subpkg.InnerType2,
  subpkg = pkg.subpkg.exportedpkg,
}
```

As you can see, the API is defined by the exports blob, allowing the inner API
to be whatever is convienient.  This is useful if the inner API needs to expand
as the complexity of the package grows. Growth can happen internally without
impact on the external API.

On the import side, wheat has a different strategy than most other languages:

- Imports from within the directory of a script are done implicitly, meaning
  all items defined within the current directory are available as if they were
  imported. This allows the programer to move objects between files without
  harm.
- Items in other directories are always available by using `pkg` to start at
  the root. Only directories are used in this path, so if you have a function
  in a directory named `core` you can access it with `pkg.core.myCoreFn`.
  Filenames are ignored by the compiler and are only used for programmer
  organization and convienience.
  - If you wish to access items that your pkg exports, use your pkg name
    directly, i.e. `mypkg.myExportedFunction`. This is useful when defining
    exported macros, as the expansion of those macros cannot access
    non-exported functions.
- External items are available by their pkg name. So if you have a dependency
  on `cheese` you can access public items via `cheese.SWISS`
- If you would like to do type renaming, it can be done with `alias MY_CHEESE =
  cheese.SWISS`. To import it directly, simply do `alias _ = cheese.SWISS`
  (brings `SWISS` into the current file namespace).

All of this means that there are no `import` or `include` statements. Including dependencies is done by the pkg
manager, at which point they are simply available to be used and type-cast as needed.

One final point, and that is on interface methods and injection. Injection is accomplished in the exports:

```
// examplePkg.wht

gen!![A [+Debug+Eq![A]]]
fn equalsSelf(a [A]) {
  return a.equal$(a);
}

exports {
  // Exports the "generic function" equalsSelf, which is really a
  // a macro, and mark that it can inject onto the symbol "equalsSelf"
  injector!!{export=equalsSelf}
  [_] = [equalsSelf];

  _ = SOME_CONSTANT_VALUE;
}

// Note: the above is the longhand for:
// exports {
//   selfInjector!
//   [_] = [equalsSelf];
// }
```

The above allows `equalsSelf` to inject other items onto the path starting with
`examplePkg.equalsSelf`.  This enables `mypkg.FooStruct` to implement
`equalsSelf`, injecting the type `[examplePkg.equalsSelf[mypkg.FooStruct]]` and the
associated methods:

```
let foo [FooStruct] = [FooStruct].new();
equalsSelf![A=FooStruct]${a=foo}
```

Constraints: 
- Injected items must always use the given prefix, followed by `[ ... ]`. 
- Injected names must always be deterministic -- if the contents of two
  identical names ever differ then a compiler error will be raised.
- Injected items can only use the scope that can be accessed by the pkg
  they are _defined in_. They cannot access non-public items within
  the pkg the macro is defined in.

> Implementation detail: the directory path (using the pkg name as the root), not the exports, is always the
> internal represenetation of the name. So if FooStruct is defined in `mypkg/some/subdir/foo.wht` then it's
> path will be `mypkg.some.subdir.FooStruct`.

The packaging system will be slightly different than other languages.

The packaging file will define the pkg layout, it will look something like:

```
// pkg.wak

exports {
  myFun = foo,
  MyType = pkg.subpkg.InnerType2,
  subpkg = pkg.subpkg.exportedpkg,
}
```

As you can see, the API is defined by the exports blob, allowing the inner API to be whatever is convienient.
This is useful if the inner API needs to expand as the complexity of the package grows. Growth can happen
internally without impact on the external API.

On the import side, wak has a different strategy than most other languages:

- Imports from within the directory of a script are done implicitly, meaning all items defined within the current directory
  are available as if they were imported. This allows the programer to move objects between files without harm.
- Items in other directories are always available by using `pkg` to start at the root. Only directories are used in this
  path, so if you have a function in a directory named `core` you can access it with `pkg.core.myCoreFn`. Filenames are
  ignored by the compiler and are only used for programmer organization and convienience. 
- External items are available by their pkg name. So if you have a dependency on `cheese` you can access public
  items via `cheese.SWISS`
- If you would like to do type renaming, it can be done with `type MY_CHEESE = cheese.SWISS`. To import it directly,
  simply do `type _ = cheese.SWISS` (brings `SWISS` into the current file namespace).

All of this means that there are no `import` or `include` statements. Including dependencies is done by the pkg
manager, at which point they are simply available to be used and type-cast as needed.

One final point, and that is on interface methods and injection. Injection is accomplished in the exports:

```
exports {
  // exports the interface MySpecialInterface
  [_] = [MySpecialInterface],
  
  injector$@{interface=[MySpecialInterface]}
  [_] = [myInjectingMacro],
}
```

The above allows `myInjectingMacro` to inject methods onto the interface `MySpecialInterface`.
This enables `mypkg.FooStruct` to implement `MySpecialInterface`, injecting the type `[MySpecialInterface[mypkg.FooStruct]]`
and the associated methods, i.e. 

```
let foo [FooStruct] = [FooStruct].new();
[MySpecialInterface.gen]$@[A=FooStruct].doSomethingSpecial${person=foo}
```

> Implementation detail: the directory path (using the pkg name as the root), not the exports, is always the 
> internal represenetation of the name, not the exports blob.

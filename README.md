## 使用方法

```nix
{
    description = "...";
    inputs = {
        cpp_ftl.url =  "github:Nazelto/nix-ftl-Functional-Template-Library-for-C-";
    };
    outputs = inputs@{
        self,
        cpp_ftl,
        ...
    }: {};
}
```

在shellHook中添加

```shell
export CPLUS_INCLUDE_PATH="${pkgs.ftl}/include''${CPLUS_INCLUDE_PATH:+:$CPLUS_INCLUDE_PATH}"
```

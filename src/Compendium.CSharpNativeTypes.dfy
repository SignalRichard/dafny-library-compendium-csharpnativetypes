module Compendium.CSharpNativeTypes {
  // ref: https://dafny.org/latest/DafnyRef/DafnyRef#sec-nativetype
  // ref: https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/integral-numeric-types
  newtype {:nativeType "sbyte"} sbyte = x | -0x80 <= x < 0x80 // -128 to 127
  newtype {:nativeType "byte"} byte = x | 0x0 <= x < 0x100 // 0 to 255
  newtype {:nativeType "short"} short = x | -0x8000 <= x < 0x8000 // -32,768 to 32,767
  newtype {:nativeType "ushort"} ushort = x | 0x0 <= x < 0x10000 // 0 to 65,535
  newtype {:nativeType "int"} int32 = x | -0x80000000 <= x < 0x80000000 // -2,147,483,648 to 2,147,483,647
  newtype {:nativeType "uint"} uint = x | 0x0 <= x < 0x100000000 // 0 to 4,294,967,295
  newtype {:nativeType "long"} long = x | -0x8000000000000000 <= x < 0x8000000000000000 //-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
  newtype {:nativeType "ulong"} ulong = x | 0x0 <= x < 0x10000000000000000 // 0 to 18,446,744,073,709,551,615
}

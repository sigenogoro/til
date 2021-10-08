# データクラスについて

- 何もしない、データを保持するためだけのクラス
- `equals()` と　`hashCode()`　など、使えるメソッドが自動生成されるため、コードを書く量が減る
- 分割宣言が可能（複数の変数に一行で代入することができる

データクラスの記述は、以下のように行う

```kotlin
data class Person(
  val name: String,
  val age: Int
)

```

# データクラスとクラスの違い

同じ値がプロパティに入っているが、インスタンス値のhash値は変数によって、バラバラ
データクラスにすると、同じhash値となる。

## データクラスを作成する場合
- データだけを保存できるオブジェクトが欲しい
- オブジェクト単位で整合性を取りたい場合
- 継承ができないクラスが欲しい（他の人にデータを保持するだけのクラスであることを伝える）

```kotlin

class Person(
    val name: String,
    val age: Int
)

data class PersonData(
    val name: String,
    val age: Int
)

fun main(){
    val a = Person("太郎", 10)
    val c = Person("太郎", 10)
    println(a.hashCode()) // -> 1826771953
    println(c.hashCode()) // -> 1406718218
    println("classの場合は" + (a == c)) //-> false
    val b = PersonData("山田", 20)
    val d = PersonData("山田", 20)
    println(b.hashCode()) //-> 23672085
    println(d.hashCode()) // -> 23672085
    println("data classの場合は" + (b == d)) // -> true
}

```


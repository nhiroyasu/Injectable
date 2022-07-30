import Foundation

public protocol Injectable {
    /// 指定した型をビルドする
    /// - Returns: 生成されたモデル
    func build<T>() -> T
    /// 指定した型をビルド
    /// - Parameter Type: ビルドしたいタイプ
    /// - Returns: 生成されたモデル
    func build<T>(_ Type: T.Type) -> T
    /// 指定した型をビルドする
    /// - Returns: 生成されたモデル。取得できない場合は `nil`
    func buildSafe<T>() -> T?
    /// 指定した型をビルドする
    /// - Parameter Type: ビルドしたいタイプ
    /// - Returns: 生成されたモデル。取得できない場合は `nil`
    func buildSafe<T>(_ Type: T.Type) -> T?
}

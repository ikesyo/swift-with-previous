@propertyWrapper
public struct WithPrevious<Value> {
    private var current: Value
    private var previous: Value?

    public init(_ value: Value) {
        self.current = value
    }

    public init(wrappedValue: Value) {
        self.init(wrappedValue)
    }

    public var wrappedValue: Value {
        get { current }
        set {
            previous = current
            current = newValue
        }
    }

    public var projectedValue: Value? { previous }
}

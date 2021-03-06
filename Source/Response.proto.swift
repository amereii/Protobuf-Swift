/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "Response.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct ResponseRoot {
    public static let `default` = ResponseRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class IGPResponse : GeneratedMessage {

    public static func == (lhs: IGPResponse, rhs: IGPResponse) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIgpId == rhs.hasIgpId) && (!lhs.hasIgpId || lhs.igpId == rhs.igpId)
        fieldCheck = fieldCheck && (lhs.hasIgpTimestamp == rhs.hasIgpTimestamp) && (!lhs.hasIgpTimestamp || lhs.igpTimestamp == rhs.igpTimestamp)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }



    //iGap Properties declaration start



    //iGap Properties declaration end

    public fileprivate(set) var igpId:String = ""
    public fileprivate(set) var hasIgpId:Bool = false

    public fileprivate(set) var igpTimestamp:Int32 = Int32(0)
    public fileprivate(set) var hasIgpTimestamp:Bool = false

    required public init() {
        super.init()
    }
    override public func isInitialized() -> Bool {
        return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasIgpId {
            try codedOutputStream.writeString(fieldNumber: 1, value:igpId)
        }
        if hasIgpTimestamp {
            try codedOutputStream.writeInt32(fieldNumber: 2, value:igpTimestamp)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasIgpId {
            serialize_size += igpId.computeStringSize(fieldNumber: 1)
        }
        if hasIgpTimestamp {
            serialize_size += igpTimestamp.computeInt32Size(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> IGPResponse.Builder {
        return IGPResponse.classBuilder() as! IGPResponse.Builder
    }
    public func getBuilder() -> IGPResponse.Builder {
        return classBuilder() as! IGPResponse.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPResponse.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return IGPResponse.Builder()
    }
    public func toBuilder() throws -> IGPResponse.Builder {
        return try IGPResponse.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:IGPResponse) throws -> IGPResponse.Builder {
        return try IGPResponse.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        guard isInitialized() else {
            throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
        }

        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIgpId {
            jsonMap["IGPId"] = igpId
        }
        if hasIgpTimestamp {
            jsonMap["IGPTimestamp"] = Int(igpTimestamp)
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> IGPResponse {
        return try IGPResponse.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> IGPResponse {
        return try IGPResponse.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasIgpId {
            output += "\(indent) igpId: \(igpId) \n"
        }
        if hasIgpTimestamp {
            output += "\(indent) igpTimestamp: \(igpTimestamp) \n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasIgpId {
                hashCode = (hashCode &* 31) &+ igpId.hashValue
            }
            if hasIgpTimestamp {
                hashCode = (hashCode &* 31) &+ igpTimestamp.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "IGPResponse"
    }
    override public func className() -> String {
        return "IGPResponse"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
        fileprivate var builderResult:IGPResponse = IGPResponse()
        public func getMessage() -> IGPResponse {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var igpId:String {
            get {
                return builderResult.igpId
            }
            set (value) {
                builderResult.hasIgpId = true
                builderResult.igpId = value
            }
        }
        public var hasIgpId:Bool {
            get {
                return builderResult.hasIgpId
            }
        }
        @discardableResult
        public func setIgpId(_ value:String) -> IGPResponse.Builder {
            self.igpId = value
            return self
        }
        @discardableResult
        public func clearIgpId() -> IGPResponse.Builder{
            builderResult.hasIgpId = false
            builderResult.igpId = ""
            return self
        }
        public var igpTimestamp:Int32 {
            get {
                return builderResult.igpTimestamp
            }
            set (value) {
                builderResult.hasIgpTimestamp = true
                builderResult.igpTimestamp = value
            }
        }
        public var hasIgpTimestamp:Bool {
            get {
                return builderResult.hasIgpTimestamp
            }
        }
        @discardableResult
        public func setIgpTimestamp(_ value:Int32) -> IGPResponse.Builder {
            self.igpTimestamp = value
            return self
        }
        @discardableResult
        public func clearIgpTimestamp() -> IGPResponse.Builder{
            builderResult.hasIgpTimestamp = false
            builderResult.igpTimestamp = Int32(0)
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> IGPResponse.Builder {
            builderResult = IGPResponse()
            return self
        }
        override public func clone() throws -> IGPResponse.Builder {
            return try IGPResponse.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> IGPResponse {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> IGPResponse {
            let returnMe:IGPResponse = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:IGPResponse) throws -> IGPResponse.Builder {
            if other == IGPResponse() {
                return self
            }
            if other.hasIgpId {
                igpId = other.igpId
            }
            if other.hasIgpTimestamp {
                igpTimestamp = other.igpTimestamp
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> IGPResponse.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPResponse.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 10:
                    igpId = try codedInputStream.readString()

                case 16:
                    igpTimestamp = try codedInputStream.readInt32()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> IGPResponse.Builder {
            let resultDecodedBuilder = IGPResponse.Builder()
            if let jsonValueIgpId = jsonMap["IGPId"] as? String {
                resultDecodedBuilder.igpId = jsonValueIgpId
            }
            if let jsonValueIgpTimestamp = jsonMap["IGPTimestamp"] as? Int {
                resultDecodedBuilder.igpTimestamp = Int32(jsonValueIgpTimestamp)
            } else if let jsonValueIgpTimestamp = jsonMap["IGPTimestamp"] as? String {
                resultDecodedBuilder.igpTimestamp = Int32(jsonValueIgpTimestamp)!
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> IGPResponse.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try IGPResponse.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension IGPResponse: GeneratedMessageProtocol {
    public typealias BuilderType = IGPResponse.Builder
    
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<IGPResponse> {
        var mergedArray = Array<IGPResponse>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> IGPResponse? {
        return try IGPResponse.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> IGPResponse {
        return try IGPResponse.Builder().mergeFrom(data: data, extensionRegistry:ResponseRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> IGPResponse {
        return try IGPResponse.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> IGPResponse {
        return try IGPResponse.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> IGPResponse {
        return try IGPResponse.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> IGPResponse {
        return try IGPResponse.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> IGPResponse {
        return try IGPResponse.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "igpId": return self.igpId
        case "igpTimestamp": return self.igpTimestamp
        default: return nil
        }
    }
}
extension IGPResponse.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "igpId": return self.igpId
            case "igpTimestamp": return self.igpTimestamp
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "igpId":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.igpId = newSubscriptValue
            case "igpTimestamp":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.igpTimestamp = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)

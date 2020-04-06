//  This file was automatically generated and should not be edited.

import AWSAppSync

public final class AllNotesQuery: GraphQLQuery {
  public static let operationString =
    "query AllNotes($limit: Int, $nextToken: String) {\n  allNotes(limit: $limit, nextToken: $nextToken) {\n    __typename\n    notes {\n      __typename\n      NoteId\n      title\n      content\n    }\n    nextToken\n  }\n}"

  public var limit: Int?
  public var nextToken: String?

  public init(limit: Int? = nil, nextToken: String? = nil) {
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allNotes", arguments: ["limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(AllNote.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(allNotes: AllNote) {
      self.init(snapshot: ["__typename": "Query", "allNotes": allNotes.snapshot])
    }

    public var allNotes: AllNote {
      get {
        return AllNote(snapshot: snapshot["allNotes"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "allNotes")
      }
    }

    public struct AllNote: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedNotes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("notes", type: .nonNull(.list(.nonNull(.object(Note.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(notes: [Note], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "PaginatedNotes", "notes": notes.map { $0.snapshot }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var notes: [Note] {
        get {
          return (snapshot["notes"] as! [Snapshot]).map { Note(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "notes")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Note: GraphQLSelectionSet {
        public static let possibleTypes = ["Note"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("NoteId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("content", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(noteId: GraphQLID, title: String? = nil, content: String? = nil) {
          self.init(snapshot: ["__typename": "Note", "NoteId": noteId, "title": title, "content": content])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var noteId: GraphQLID {
          get {
            return snapshot["NoteId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "NoteId")
          }
        }

        public var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }
      }
    }
  }
}

public final class GetNoteQuery: GraphQLQuery {
  public static let operationString =
    "query GetNote($NoteId: ID!) {\n  getNote(NoteId: $NoteId) {\n    __typename\n    NoteId\n    title\n    content\n  }\n}"

  public var NoteId: GraphQLID

  public init(NoteId: GraphQLID) {
    self.NoteId = NoteId
  }

  public var variables: GraphQLMap? {
    return ["NoteId": NoteId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getNote", arguments: ["NoteId": GraphQLVariable("NoteId")], type: .object(GetNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getNote: GetNote? = nil) {
      self.init(snapshot: ["__typename": "Query", "getNote": getNote.flatMap { $0.snapshot }])
    }

    public var getNote: GetNote? {
      get {
        return (snapshot["getNote"] as? Snapshot).flatMap { GetNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getNote")
      }
    }

    public struct GetNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("NoteId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(noteId: GraphQLID, title: String? = nil, content: String? = nil) {
        self.init(snapshot: ["__typename": "Note", "NoteId": noteId, "title": title, "content": content])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var noteId: GraphQLID {
        get {
          return snapshot["NoteId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "NoteId")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }
    }
  }
}

public final class SaveNoteMutation: GraphQLMutation {
  public static let operationString =
    "mutation SaveNote($NoteId: ID!, $title: String!, $content: String!) {\n  saveNote(NoteId: $NoteId, title: $title, content: $content) {\n    __typename\n    NoteId\n    title\n    content\n  }\n}"

  public var NoteId: GraphQLID
  public var title: String
  public var content: String

  public init(NoteId: GraphQLID, title: String, content: String) {
    self.NoteId = NoteId
    self.title = title
    self.content = content
  }

  public var variables: GraphQLMap? {
    return ["NoteId": NoteId, "title": title, "content": content]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("saveNote", arguments: ["NoteId": GraphQLVariable("NoteId"), "title": GraphQLVariable("title"), "content": GraphQLVariable("content")], type: .object(SaveNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(saveNote: SaveNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "saveNote": saveNote.flatMap { $0.snapshot }])
    }

    public var saveNote: SaveNote? {
      get {
        return (snapshot["saveNote"] as? Snapshot).flatMap { SaveNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "saveNote")
      }
    }

    public struct SaveNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("NoteId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(noteId: GraphQLID, title: String? = nil, content: String? = nil) {
        self.init(snapshot: ["__typename": "Note", "NoteId": noteId, "title": title, "content": content])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var noteId: GraphQLID {
        get {
          return snapshot["NoteId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "NoteId")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }
    }
  }
}

public final class DeleteNoteMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteNote($NoteId: ID!) {\n  deleteNote(NoteId: $NoteId) {\n    __typename\n    NoteId\n    title\n    content\n  }\n}"

  public var NoteId: GraphQLID

  public init(NoteId: GraphQLID) {
    self.NoteId = NoteId
  }

  public var variables: GraphQLMap? {
    return ["NoteId": NoteId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteNote", arguments: ["NoteId": GraphQLVariable("NoteId")], type: .object(DeleteNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteNote: DeleteNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteNote": deleteNote.flatMap { $0.snapshot }])
    }

    public var deleteNote: DeleteNote? {
      get {
        return (snapshot["deleteNote"] as? Snapshot).flatMap { DeleteNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteNote")
      }
    }

    public struct DeleteNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Note"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("NoteId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(noteId: GraphQLID, title: String? = nil, content: String? = nil) {
        self.init(snapshot: ["__typename": "Note", "NoteId": noteId, "title": title, "content": content])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var noteId: GraphQLID {
        get {
          return snapshot["NoteId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "NoteId")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }
    }
  }
}
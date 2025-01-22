//
//  ToDoListItemViewModel.swift
//  ToDoList
//
//  Created by Dan June on 1/21/25.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

// ViewModel for a single to do list item (each row in items list)
class ToDoListItemViewModel: ObservableObject {
    init() {}

    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}

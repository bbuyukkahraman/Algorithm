/*
 Screening - Simple Algorithm Questions
 
 Q2) Assume we have a Node class defined as shown below.
 class Node {
 int value;
 Node next;
 }
 
 Write a method that accepts a single Node as an argument and returns whether the linked list starting at that node contains a cycle.
 Note: Below are examples of two linked lists with the latter containing a cycle.
 */

class Node {
    
    var value: Int?
    var next : Node?
    
    //MARK:- Method that checks linked lists contains a cycle
    
    func isNodeContainsCycle(_ node : Node) -> Bool {
        
        // Step 1: Check the next Node availability
        if let next = node.next {
        
            // Step 2: Check the next Node value is bigger than current node value
            if next.value! > node.value! {
                
                // Step 3: Go to the next Node and call method as recursively
                return isNodeContainsCycle(next)
                
            } else {
                return true
            }
        }
        return false
    }
}
 

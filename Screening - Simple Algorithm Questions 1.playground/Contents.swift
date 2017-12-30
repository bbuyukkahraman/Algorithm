/*
 Screening - Simple Algorithm Questions

 Q1) Assume we have a Node class defined as shown below.
 
 class Node {
 int value;
 Node leftChild;
 Node rightChild;
 }
 Write a method that accepts a single Node as an argument and returns whether the tree starting at that node is a binary search tree.
 Note: A binary search tree abides by the following ordering properties:
 The value of every node in a node's left subtree is less than the value of that node.
 The value of every node in a node's right subtree is greater than the value of that node.
 */


class Node {
    
    var value: Int!
    var leftChild : Node!
    var rightChild: Node!
    
    //MARK:- Method for to check Binary Search Tree status
    
    func isNodeBinarySearchTree(node: Node?) -> Bool {
        
        //Step 1 : Check Node is last or not
        if node == nil {
            return true
        }
        
        //Step 2 : Check unwanted conditions
        if node!.leftChild.value > node!.value || node!.rightChild.value < node!.value {
            return false
        }
        
        //Step 3: Repeat for each left and right child nodes
        return isNodeBinarySearchTree(node:node!.leftChild) && isNodeBinarySearchTree(node:node!.rightChild)
    }
    
    
    
//    func isNodeBinarySearchTree(_ node: Node) -> Bool {
//
//        // Step 1: Check the left Child Node availability
//        if let left = node.leftChild {
//
//            // Step 2: Check the left Child Node value is smaller than parent Node
//            if left.value! < node.value! {
//
//                // Step 3: Go to the leftChild Node and call method recursively
//                left.isNodeBinarySearchTree(left)
//            } else {
//                return false
//            }
//        }
//
//        // Step 4: Check the right Child Noe availability
//        if let right = node.rightChild {
//
//            // Step 5: Check the right Child Node value is bigger than parent Node
//            if right.value! > node.value! {
//
//                // Step 6: Go to the rightChild Node and call method recursively
//                right.isNodeBinarySearchTree(right)
//            } else {
//                return false
//            }
//        }
//        return true
//    }
    
}


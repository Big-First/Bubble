namespace Bubble.Core;

public class Node
{
    public Node(){}
    public Guid Id { get; set; }
    public byte[] publicKey { get; set; }
    public byte[] privateKey { get; set; }
    public byte[] hash { get; set; }
    public Node previusHash { get; set; }
    public Node left { get; set; }
    public Node right { get; set; }

    public Node(Guid id, byte[] publicKey, byte[] privateKey, byte[] hash, Node previusHash, Node left, Node right)
    {
        Id = id;
        this.publicKey = publicKey;
        this.privateKey = privateKey;
        this.hash = hash;
        this.previusHash = previusHash;
        this.left = left;
        this.right = right;
    }
}
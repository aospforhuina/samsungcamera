.class Lcom/samsung/android/camera/core2/node/NodeChain$NodeConnectionInfo;
.super Ljava/lang/Object;
.source "NodeChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/NodeChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeConnectionInfo"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/node/Node;

.field private final b:Lcom/samsung/android/camera/core2/node/Node$PortType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/node/Node;Lcom/samsung/android/camera/core2/node/Node$PortType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/NodeChain$NodeConnectionInfo;->a:Lcom/samsung/android/camera/core2/node/Node;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/NodeChain$NodeConnectionInfo;->b:Lcom/samsung/android/camera/core2/node/Node$PortType;

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/camera/core2/node/Node;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/NodeChain$NodeConnectionInfo;->a:Lcom/samsung/android/camera/core2/node/Node;

    return-object p0
.end method

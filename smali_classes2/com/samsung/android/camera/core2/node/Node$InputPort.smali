.class public Lcom/samsung/android/camera/core2/node/Node$InputPort;
.super Lcom/samsung/android/camera/core2/node/Node$Port;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputPort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/camera/core2/node/Node$Port<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Lcom/samsung/android/camera/core2/node/Node$CoreInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/Node$CoreInterface<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/samsung/android/camera/core2/node/Node$OutputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/Node$OutputPort<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/node/Node$PortType;Lcom/samsung/android/camera/core2/node/Node$CoreInterface;Lcom/samsung/android/camera/core2/node/Node$OutputPort;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/Node$PortType<",
            "TT;>;",
            "Lcom/samsung/android/camera/core2/node/Node$CoreInterface<",
            "TT;>;",
            "Lcom/samsung/android/camera/core2/node/Node$OutputPort<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/Node$Port;-><init>(Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/Node$InputPort;->b:Lcom/samsung/android/camera/core2/node/Node$CoreInterface;

    .line 3
    invoke-virtual {p0, p3}, Lcom/samsung/android/camera/core2/node/Node$InputPort;->b(Lcom/samsung/android/camera/core2/node/Node$OutputPort;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/samsung/android/camera/core2/node/Node$PortType;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node$Port;->a()Lcom/samsung/android/camera/core2/node/Node$PortType;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/samsung/android/camera/core2/node/Node$OutputPort;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/Node$OutputPort<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node$Port;->a:Lcom/samsung/android/camera/core2/node/Node$PortType;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/Node$OutputPort;->a()Lcom/samsung/android/camera/core2/node/Node$PortType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/node/Node$PortType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/Node$OutputPort;->a()Lcom/samsung/android/camera/core2/node/Node$PortType;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/Node$Port;->a:Lcom/samsung/android/camera/core2/node/Node$PortType;

    aput-object p0, v2, p1

    const-string p0, "outputPort\'s portType(%s) is not equal with this portType(%s)"

    .line 4
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/Node$InputPort;->c:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    return-void
.end method

.method public c()Lcom/samsung/android/camera/core2/node/Node$CoreInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/camera/core2/node/Node$CoreInterface<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/Node$InputPort;->b:Lcom/samsung/android/camera/core2/node/Node$CoreInterface;

    return-object p0
.end method

.method protected d(Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/samsung/android/camera/core2/ExtraBundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node$InputPort;->b:Lcom/samsung/android/camera/core2/node/Node$CoreInterface;

    invoke-interface {v0}, Lcom/samsung/android/camera/core2/node/Node$CoreInterface;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/Node$InputPort;->b:Lcom/samsung/android/camera/core2/node/Node$CoreInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/camera/core2/node/Node$CoreInterface;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/Node$InputPort;->c:Lcom/samsung/android/camera/core2/node/Node$OutputPort;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/Node$OutputPort;->c(Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public e(Lcom/samsung/android/camera/core2/node/Node$CoreInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/Node$CoreInterface<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/Node$InputPort;->b:Lcom/samsung/android/camera/core2/node/Node$CoreInterface;

    return-void
.end method

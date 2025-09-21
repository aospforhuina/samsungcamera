.class Lcom/samsung/android/camera/core2/node/Node$9;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/Node$CoreInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/camera/core2/node/Node$CoreInterface<",
        "Lcom/samsung/android/camera/core2/util/ImageBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/camera/core2/node/Node;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/Node$9;->c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->needProcessPicture()Z

    move-result p0

    return p0
.end method

.method public c(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-boolean v2, Lcom/samsung/android/camera/core2/node/Node;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/Node;->checkPictureProcessTimeout()V

    :cond_0
    if-nez p1, :cond_2

    .line 4
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/Node;->isSupportIncompleteMerge()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "[Error] this node dose not support incomplete merge."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/camera/core2/node/i;->a:Lcom/samsung/android/camera/core2/node/i;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/Node;->needPictureDump()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTagNameWithoutVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/camera/core2/util/FileUtils;->p(Lcom/samsung/android/camera/core2/util/ImageBuffer;Ljava/lang/String;)V

    .line 9
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - processPicture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/camera/core2/node/Node;->processPicture(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 12
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/node/Node;->needPictureDump()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after_"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTagNameWithoutVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/FileUtils;->p(Lcom/samsung/android/camera/core2/util/ImageBuffer;Ljava/lang/String;)V

    .line 14
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x1f4

    cmp-long p2, v3, v0

    if-ltz p2, :cond_5

    .line 15
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing time over 500ms  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 16
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/Node$9;->a:Lcom/samsung/android/camera/core2/node/Node;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->cancelPictureProcessTimeout()V

    .line 17
    :cond_6
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/camera/core2/node/i;->a:Lcom/samsung/android/camera/core2/node/i;

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object p1
.end method

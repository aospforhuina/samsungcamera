.class Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;
.super Ljava/lang/Object;
.source "MultiFrameNodeBase.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/Node$CoreInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V
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
.field final synthetic a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->e(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->f(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->setMaxInputCount(I)V

    return-void
.end method

.method private synthetic f(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->setRequiredYuvInputCount(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->g(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->needProcessPicture()Z

    move-result p0

    return p0
.end method

.method public g(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->v:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/g;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/node/g;-><init>(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;)V

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    sget-object v0, Lcom/samsung/android/camera/core2/ExtraBundle;->w:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {p2, v0}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/h;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/node/h;-><init>(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->isSupportIncompleteMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "[Error] this node dose not support incomplete merge."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 7
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->e(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->i(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;I)V

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/util/ImageInfo;->j()Lcom/samsung/android/camera/core2/util/ImgFormat;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/camera/core2/util/ImgFormat;->w:Lcom/samsung/android/camera/core2/util/ImgFormat;

    if-ne v2, v3, :cond_2

    .line 9
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {v2}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->f(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->j(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;I)V

    :cond_2
    move v0, v1

    .line 10
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 11
    sget-boolean v4, Lcom/samsung/android/camera/core2/node/Node;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 12
    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/node/Node;->checkPictureProcessTimeout()V

    .line 13
    :cond_4
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/camera/core2/node/i;->a:Lcom/samsung/android/camera/core2/node/i;

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 14
    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/node/Node;->needPictureDump()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {v6}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->e(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTagNameWithoutVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/samsung/android/camera/core2/util/FileUtils;->p(Lcom/samsung/android/camera/core2/util/ImageBuffer;Ljava/lang/String;)V

    .line 16
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " - processPicture ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getCurrentCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->getMaxInputCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 17
    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/camera/core2/node/Node;->processPicture(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p1

    .line 18
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 19
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/node/Node;->needPictureDump()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "output_"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTagNameWithoutVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/FileUtils;->p(Lcom/samsung/android/camera/core2/util/ImageBuffer;Ljava/lang/String;)V

    .line 21
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v2, 0x1f4

    cmp-long p2, v5, v2

    if-ltz p2, :cond_7

    .line 22
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing time over 500ms  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_7
    if-eqz v4, :cond_8

    .line 23
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/node/Node;->cancelPictureProcessTimeout()V

    .line 24
    :cond_8
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object v2, Lcom/samsung/android/camera/core2/node/i;->a:Lcom/samsung/android/camera/core2/node/i;

    invoke-virtual {p2, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_9

    .line 25
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {p2, v1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->i(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;I)V

    .line 26
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->j(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;I)V

    goto :goto_1

    .line 27
    :cond_9
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {p2}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->e(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->g(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 28
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {p2, v1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->i(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;I)V

    .line 29
    :cond_a
    iget-object p2, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {p2}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->f(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->h(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;)I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 30
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase$1;->a:Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;->j(Lcom/samsung/android/camera/core2/node/MultiFrameNodeBase;I)V

    :cond_b
    :goto_1
    return-object p1
.end method

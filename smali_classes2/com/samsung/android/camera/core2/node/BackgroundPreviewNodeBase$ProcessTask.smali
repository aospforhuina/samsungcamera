.class Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;
.super Ljava/lang/Object;
.source "BackgroundPreviewNodeBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessTask"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/samsung/android/camera/core2/util/ImageInfo;

.field private final c:Lcom/samsung/android/camera/core2/ExtraBundle;

.field final synthetic d:Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;Ljava/lang/Object;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/samsung/android/camera/core2/util/ImageInfo;",
            "Lcom/samsung/android/camera/core2/ExtraBundle;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->d:Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->a:Ljava/lang/Object;

    .line 3
    iput-object p4, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->c:Lcom/samsung/android/camera/core2/ExtraBundle;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->b:Lcom/samsung/android/camera/core2/util/ImageInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->d:Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;->f(Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;)Lcom/samsung/android/camera/core2/util/TimeChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/TimeChecker;->a()V

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->d:Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;

    iget-object v3, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->b:Lcom/samsung/android/camera/core2/util/ImageInfo;

    iget-object v5, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->c:Lcom/samsung/android/camera/core2/ExtraBundle;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;->processBackgroundPreviewInternal(Ljava/lang/Object;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1f4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->d:Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProcessTask : processing timeout 500ms : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->d:Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;->e(Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->d:Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/node/Node;->getNodeTag()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProcessTask  fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 8
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase$ProcessTask;->d:Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;->e(Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 9
    throw v0
.end method
